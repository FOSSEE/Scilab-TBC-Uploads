// sum 19-6
clc;
clear;
N=1.5*8*60;
l=200;
t=1.5/2;
W=350*10^3;
WD=0.15*l*W*10^-6;
n=0.9; //since frictional effect is 10%, effciency of system is 90%
Wi=WD/n;
L=400;
delU=(L-(0.15*l))/(L)*10^3*Wi;
Ks=0.12;
w=2*%pi*N/60;
I=delU/(Ks*w^2);
Ir=I*0.9;
R=0.7;
m=Ir/R^2;
rho=7150;
t=sqrt(m*10^6/(rho*2*%pi*R*1.5));
b=1.5*t;

  // printing data in scilab o/p window
  printf("t is %0.1f mm    ",t);
  printf("\n b is %0.1f mm    ",b);