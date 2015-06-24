// sum 25-5
clc;
clear;
alpha=20*%pi/180;
N=800;
P=6000;
sigut=450;
i=5;
Cs=1.3;
v=3.6;
FOS=2;
Pt=P/v;
Cv=3/(3+v);
sigb=sigut/3;
dp=3.6*1000*2*60/(2*%pi*N);
dp=86;
Sb=Pt*Cs/Cv*FOS;
//Let x be m^2*Y
x=Sb/(10*sigb);
m=5;
Zp=18;
dp=m*Zp;
Zg=i*Zp;
dg=m*Zg;
b=10*m;
phip=m+(0.25*sqrt(dp));
ep=32+(2.5*phip);
phig=m+(0.25*sqrt(dg));
eg=32+(2.5*phig);
e=ep+eg;
e=e*10^-3;
Ps=Cs*Pt;
r1=dp/2;
r2=dg/2;
Pd=e*N*Zp*b*r1*r2/(2530*sqrt(r1^2+r2^2));
Q=(2*Zg)/(Zp+Zg);
K=Sb/(b*dp*Q);
BHN=sqrt(K/0.16)*100;

  // printing data in scilab o/p window
  printf("Ps is %0.2f N   ",Ps);
  printf("\n Pd is %0.1f N   ",Pd);
  printf("\n BHN is %0.0f   ",BHN);
