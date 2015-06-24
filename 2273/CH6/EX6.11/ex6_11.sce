//Determine sending end voltage and current and power factor and MVA and power angle
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
P=40*10^6;//MVA
Vrl=220*1000;//V
pf=0.8//power factir
Vr=[Vrl/sqrt(3) 0];
Ir=[P/(sqrt(3)*Vrl) -acosd(pf)];
z=complex(0.105,0.3768)*500;
Z=[floor(abs(z)*1000)/1000 atand(imag(z)/real(z))];
y=complex(0,2.882*10^-6)*500;
Y=[abs(y) 90];
YZ=rxr(Z,Y);
Y2Z2=rxr(YZ,YZ);
A_=1+(r2p(YZ))/2+(r2p(Y2Z2))/24;
A=p2r(A_);
P_=(1+(r2p(YZ))/6+(r2p(Y2Z2))/120);
P=p2r(P_);
B=rxr(Z,P);
C=rxr(Y,P);
D=A;
AV=r2p(rxr(A,Vr));
BI=r2p(rxr(B,Ir));
Vs=AV+BI;
theta1=atand((imag(Vs)/real(Vs)));
Vsl=sqrt(3)*abs(Vs)/1000;
printf("Sending end voltage= %.3fkV\n",Vsl);
CV=r2p(rxr(C,Vr));
DI=r2p(rxr(D,Ir));
Is_=CV+DI;
Is=p2r(Is_);
theta2=Is(2);
printf("Magnitude of sending end current= %.1f A\n",Is(1));
Spf=cosd(theta2-theta1);
printf("Sending end power factor= %.3f leading\n",Spf);
Ps=sqrt(3)*Vsl*Is(1)/1000;
printf("Sending end MVA= %.2f MVA\n",Ps);
printf("Power angle= %.3f°",theta1);
//ALL THE ANS ARE DIFFRENT BECAUSE OF ROUND OFF IN THE BOOK
