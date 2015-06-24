// sum 19-7
clc;
clear;
N=144;
//Let n be no. of punches/ min
n=8;
//Let t be timr for 1 punch
t=60/n;
theta=N/60*2*%pi*0.6;
T=2.1;
U=T*theta;
//Let U1 be revolution of crankshaft in t sec
U1=t*N/60*2*%pi;
delU=(U1-theta)/U1*U*10^3;
w=2*%pi*1440/60;
Ks=0.1;
I=delU/(Ks*w^2);
Ir=I*0.9;
rho=7100;

R=Ir/(rho*0.2*0.1*2*%pi);
R=R^(1/5);
t=0.1*R*1000;
b=0.2*R*10^3;
t=40;
b=80;
R=400;
// printing data in scilab o/p window
  printf("t is %0.0f mm    ",t);
  printf("\n b is %0.0f mm    ",b);
  printf("\n R is %0.0f mm    ",R);