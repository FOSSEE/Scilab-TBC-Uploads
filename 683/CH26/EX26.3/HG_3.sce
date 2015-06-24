// sum 26-3
clc;
clear;
Zp=24;
Zg=72;
alphan=20*%pi/180;
phi=24*%pi/180;
N=720;
mn=5;
b=50;
sigut=600;
BHN=360;
Cs=1.4;
FOS=2;
sigb=sigut/3;
dp=mn*Zp/cos(phi);
Zp=Zp/(cos(phi))^3;
Zg=Zg/(cos(phi))^3;
Y=0.358+((0.364-0.358)*1.48/2);
Sb=b*mn*sigb*Y;
Q=(2*Zg)/(Zp+Zg);
K=0.16*(BHN/100)^2;
Sw=b*dp*Q*K/(cos(phi)^2);
v=2*%pi*N*dp/(60*2*1000);
Cv=5.6/(5.6+sqrt(v));
Peff=Sb/FOS;
Pt=Peff*Cv/Cs;
P=Pt*v;
P=P*10^-3;

  // printing data in scilab o/p window
  printf("P is %0.3f kW   ",P);

//The difference in the value is due to rounding-off of the values.
