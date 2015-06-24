// sum 31-2
clc;
clear;
d=16;
D=1.5*d;
t=20;
tg=4;
//Let Gasket diameter in compression zone be d1
d1=D+(2*t)+tg;
lg=40;
E=207*10^3;
kb=%pi*d^2*E/(lg*4);
Ecl=90*10^3;
x=(5*(lg+(0.5*d))/(lg+(2.5*d)));
kp=%pi*Ecl*d/(2*log(x));
Ag=%pi*(d1^2-d^2)/4;
Eg=480;
kg=Ag*Eg/tg;
km=kg*kp/(kg+kp);
C=kb/(kb+km);
At=157;
sigp=600;
Pi=0.75*At*sigp/2;
FOS=2;
Pf=At*sigp/FOS;
W=Pf-Pi;
P=W/C;
N=5;
F=P*N;
p=F*4/(%pi*120^2);

  // printing data in scilab o/p window
  printf("p is %0.3f N/mm^2     ",p);
