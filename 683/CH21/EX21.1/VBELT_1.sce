// sum 21-1
clc;
clear;
P1=12*10^3;
d=0.3;
D=0.9;
C=0.9;
A=230*10^-6;
//density is rho
rho=1100;
N=1500;
//Maximum stress is sig
sig=2.1*10^6;
//semi groove angle is b
b=20*%pi/180;
u=0.22;
m=rho*A;
v=2*%pi*N*d/(60*2);
Tc=m*v^2;
T1=A*sig;
//wrap angle is thetaA
ang=(D-d)/(2*C);
thetaA=%pi/180*(180-(2*asind(ang)));
thetaB=((2*%pi)-thetaA);
x=u*thetaB;
T2=Tc+((T1-Tc)/exp(x));
P2=(T1-T2)*v;
n=P1/P2;
n=3; //(rounding off to nearest whole number)

  // printing data in scilab o/p window
  printf("Tc is %0.1f N ",Tc);
  printf("\n T1 is %0.0f N ",T1);
  printf("\n T2 is %0.1f N ",T2);
  printf("\n P2 is %0.0f W ",P2);
  printf("\n n is %0.0f ",n);
  
  