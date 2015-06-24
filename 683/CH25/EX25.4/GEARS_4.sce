// sum 25-4
clc;
clear;
n=240;
P=8000;
N=1200;
CD=300;
Cs=1.5;
alpha=20*%pi/180;
G=N/n;
dp=CD*2/6;
dg=5*dp;
v=2*%pi*N*dp/(60*1000*2);
Cv=3/(3+v);
Pt=P/v;
Peff=Pt*Cs/Cv;
m=4;
b=10*m;
FOS=2;
Sb=Peff*FOS;
sigut=600;
sigb=sigut/3;
Zp=dp/m;
Zg=dg/m;
Q=(2*Zg)/(Zp+Zg);
K=Sb/(b*dp*Q);
BHN=sqrt(K/0.16)*100;
BHN=333;

  // printing data in scilab o/p window
  printf("BHN is %0.0f    ",BHN);
