//Determine sending end voltage and current
clear;
clc;

//soltion
//FUNCTIONS
function [z]=rxr(A,B)//Function for the multiplication of rectangular
    z(1)=A(1)*B(1)
    z(2)=A(2)+B(2)
    endfunction

function [a]=r2p(z)//Function for rectangular to polar
    a=z(1)*complex(cosd(z(2)),sind(z(2)))
endfunction

function [v]=p2r(q)//Function for polar to rectangular
    v(1)=abs(q)
    v(2)=atand(imag(q)/real(q))
endfunction


//given
P=80*10^6;//MW
Vrl=220*1000;//V
pf=0.8//power factir
Vr=[Vrl/sqrt(3) 0];
Ir=[P/(sqrt(3)*Vrl*pf) -acosd(pf)];
Z=[200 80];
Y=[0.0013 90];
YZ=rxr(Z,Y);
Y2Z2=rxr(YZ,YZ);
[Y3Z3]=rxr(Y2Z2,YZ);
A_=1+(r2p(YZ))/2+(r2p(Y2Z2))/24+(r2p(Y3Z3))/720;
A=p2r(A_);
printf("A = D = %.4f∠%.2f°\n",A(1),A(2));
P_=(1+(r2p(YZ))/6+(r2p(Y2Z2))/120+(r2p(Y3Z3))/5040);
P=p2r(P_);
B=rxr(Z,P);
printf("B= %.2f∠%.2f° ohm\n",B(1),B(2));
C=rxr(Y,P);
printf("C= %.6f∠%.2f° siemens\n",C(1),C(2));
D=A;
Z1=rxr(A,Vr);
Z2=rxr(B,Ir);
AV=r2p(Z1);
BI=r2p(Z2);
Vs=AV+BI;
theta1=atand((imag(Vs)/real(Vs)));
printf("Sending end voltage= %.3fkV\n",sqrt(3)*abs(Vs)/1000);
Y1=rxr(C,Vr);
Y2=rxr(D,Ir);
CV=r2p(Y1);
DI=r2p(Y2);
Is_=CV+DI;
Is=p2r(Is_);
printf("Magnitude of sending end current= %.1f∠%.2f° A\n",Is(1),Is(2));
