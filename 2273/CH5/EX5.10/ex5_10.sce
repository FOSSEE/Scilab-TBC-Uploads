//Find regulation and charging current using nominal T method
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
P=50*10^6;//M watts
Vrl=132*1000;//V
pf=0.8//power factir
Vr=[floor(Vrl/sqrt(3)) 0];
Ir=[floor(P/(sqrt(3)*Vrl*pf)) -acosd(pf)];
A=[0.95 1.4];
B=[96 78];
C=[0.0015 90];
D=A;
Z1=rxr(A,Vr);
Z2=rxr(B,Ir);
AV=r2p(Z1);
BI=r2p(Z2);
Vs=AV+BI;
theta1=atand((imag(Vs)/real(Vs)));
printf("Sending end voltage= %.0f∠%.2f° Volts\n",abs(Vs),theta1);
Y1=rxr(C,Vr);
Y2=rxr(D,Ir);
CV=r2p(Y1);
DI=r2p(Y2);
Is=CV+DI;
Ira=r2p(Ir);
Ic=Is-Ira;
theta2=atand(imag(Ic)/real(Ic));
Ic_=sqrt(round(imag(Ic))^2+round(real(Ic))^2);
printf("Charging current= %.1f∠%f° A\n",Ic_,theta2);
Pr=((abs(Vs)/A(1)-Vr)*100)/Vr;
printf("Percentage regulation= %.0f percent\n",Pr);
//1. The Magnitude of Sending end voltage is 94066, it is due to rounding some of the values
//2. The angle in the book is 93.1° in charging current
