// sum 25-4
clc;
clear;
P=9000;
N=900;
n=150;
sigut=750;
BHN=300;
Cs=1.5;
FOS=2;
i=N/n;
x=sqrt(i);
Zp=18;
Zg=x*Zp;
Zg=44;
//Let actual speed reduction be xa
xa=Zg/Zp;
n1=N/xa^2;
T1=P*60/(2*%pi*N);
i2=N/xa;
T2=N/i2*T1;
m=6;
dp=Zp*m;
dg=m*Zg;
phip=m+(0.25*sqrt(dp));
ep=16+(1.25*phip);
phig=m+(0.25*sqrt(dg));
eg=16+(1.25*phig);
e=ep+eg;
e=e*10^-3;
Pt=26000;
Ps=Cs*Pt;
r1=dp/2;
r2=dg/2;
b=10*m;
Pd=e*i2*Zp*b*r1*r2/(2530*sqrt(r1^2+r2^2));
Q=(2*Zg)/(Zp+Zg);
sigb=sigut/3;
Y=0.308;

Sb=b*m*sigb*Y;
K=0.16*(BHN/100)^2;
Sw=b*dp*K*Q;

  // printing data in scilab o/p window
  printf("m is %0.0f mm   ",m);
  printf("\n Pd is %0.3f N   ",Pd);
  printf("\n Sw is %0.0f N   ",Sw);
  
  //The difference in the values is due to rounding-off of the values.
