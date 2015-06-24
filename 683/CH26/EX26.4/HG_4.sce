// sum 26-4
clc;
clear;
Zp=25;
Zg=100;
P=5000;
N=2000;
alphan=20*%pi/180;
phi=15*%pi/180;
sigut=660;
Cs=1.5;
FOS=1.8;
v=10;
Zp1=Zp/(cos(phi))^3;
Zg1=Zg/(cos(phi))^3;
Y=0.348+(0.74*0.004);
sigb=sigut/3;
Cv=5.6/(5.6+sqrt(v));
//Sb=FOS*Peff
mn=FOS*P*Cs*60*1000*2*cos(phi)/(2*%pi*N*Cv*Zp*12*sigb*Y);
mn=mn^(1/3);
mn=2.5;
dp=mn*Zp/cos(phi);
Q=(2*Zg)/(Zp+Zg);
b=12*mn;
Sb=12*sigb*Y;
K=Sb*(cos(phi)^2)/(dp*Q*b);
BHN=sqrt(K/0.16)*100;
dg=mn*Zg/cos(phi);
phip=mn+(0.25*sqrt(dp));
ep=16+(1.25*phip);
phig=mn+(0.25*sqrt(dg));
eg=16+(1.25*phig);
e=ep+eg;
e=e*10^-3;
r1=dp/2;
r2=dg/2;
Pd=e*N*Zp1*b*r1*r2/(2530*sqrt(r1^2+r2^2));
v=2*%pi*N*dp/(60*2*1000);
//Let tangential component be TC
TC=(Cs*1845/mn)+(Pd*cos(alphan)*cos(phi));

Sb=b*mn*sigb*Y;

  // printing data in scilab o/p window
  printf("mn is %0.1f mm   ",mn);
  printf("\n TC is %0.0f N  ",TC);
  printf("\n Sb is %0.1f N  ",Sb);
  
  //The difference in the value  of Sb is due to rounding-off of t
