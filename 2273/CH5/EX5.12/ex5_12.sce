//Find ABCD parameters and sending end voltage and current and power factor and transmission eficiency
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

//given
P=80*10^6;//watts
Vrl=220*1000;//V
pf=0.8//power factir
Vr=[Vrl/sqrt(3) 0];
Ir_=[P/(sqrt(3)*Vrl*pf) -acosd(pf)];
Ir=r2p(Ir_);
Z=[200 80];
Y=[0.0013 90];
a=rxr(Z,Y);
Ac=1+r2p(a)/2;
A=[abs(Ac) atand((imag(Ac)/real(Ac)))];
D=A;
printf("A=D= %.3f∠%.1f° \n",A(1),A(2));
b=rxr(Z,Y);
Bc=1+r2p(b)/4;
B=[abs(Bc) atand((imag(Bc)/real(Bc)))];
B=rxr(Z,B);
printf("B= %.1f∠%.2f° ohm\n",B(1),B(2));
C=Y;
printf("C=%.4f∠%d° siemens\n",C(1),C(2));
Z1=rxr(A,Vr);
Z2=rxr(B,Ir_);
AV=r2p(Z1);
BI=r2p(Z2);
Vs=AV+BI;
theta1=atand((imag(Vs)/real(Vs)));
Vsl=sqrt(3)*abs(Vs);
printf("Sending end voltage= %dkV\n",round(Vsl/1000));
Y1=rxr(C,Vr);
Y2=rxr(D,Ir_);
CV=r2p(Y1);
DI=r2p(Y2);
Is=CV+DI;
theta2=atand(imag(Is)/real(Is));
printf("Sending end current= %.1f∠%.1f°A\n",abs(Is),theta2);
phis=theta2-theta1;
Ps=3*abs(Vs)*abs(Is)*cosd(phis);
printf("Sending end power=%.2fMW\n",Ps/10^6);
n=P*100/Ps;
printf("Transmission Efficiency= %.1f percent",n);
