// sum 9-5
clc;
clear;
Eb=207*10^3;
Ec=105*10^3;
sigp=650;
At=115;
Pi=0.75*sigp*At;
F=sigp*At;
//Let the additional load Fadd
Padd=F-Pi;
d=14;
Ad=%pi*d^2/4;
Lg=63;
kb=Ad*Eb/Lg;
lg=60;
x=5*(lg+(0.5*d))/(lg+(2.5*d));
km=%pi*Ec*d/(2*log(x));
C=kb/(kb+km);
Pe=Padd/C;
K=0.2;
Ti=Pi*K*d*10^-3;

  // printing data in scilab o/p window
  printf("Ti is %0.2f Nm      ",Ti);