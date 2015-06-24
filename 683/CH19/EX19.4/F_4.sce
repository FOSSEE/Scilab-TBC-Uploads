//sum 19-4
clc;
clear;
d=20;
t=12;
Tus=450;
Pmax=%pi*d*t*Tus;
WD=Pmax*t/2*10^-3;
n=0.95;
Wi=WD/n;
delU=5*Wi/6;
N=300;
w=2*%pi*N/60;
Ks=0.2;
I=delU/(Ks*w^2);
Ir=I*0.9;
R=0.5;
m=Ir/R^2;
rho=7150;
t=sqrt(m*10^6/(rho*2*%pi*R*2));
b=2*t;

  // printing data in scilab o/p window
  printf("t is %0.1f mm    ",t);
  printf("\n b is %0.1f mm    ",b);
  printf("\n R is %0.1f m    ",R);