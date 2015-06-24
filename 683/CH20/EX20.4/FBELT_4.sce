// sum 20-4
clc;
clear;
N=1440;
i=2.5;
C=3600;
//let load factor be LF
LF=1.3;
P=12*10^3;
n=N/i;
V=16;
d=V*10^3*60/(2*%pi*N);
d=220;
D=d*i;
V=2*%pi*N*d/(2*60*1000);
v=5;
//Let power transmitte dfrom high speed belt =P1
P1=0.0118;
//Let LR be the load rating of belt
LR=P1/v*V;
theta=180+(2*asind((D-d)/(2*C)));
theta=theta*%pi/180;
//Let Arc of contact connection factor be CF
CF=1-(0.03/2);
Pd=P*LF*CF;
b=Pd/(LR*5);
b=80;
L=sqrt((4*C^2)-(D+d)^2)+(theta*(D+d)/2);
L=L*10^-3;

  // printing data in scilab o/p window
  printf("V is %0.1f m/s ",V)
  printf("\n b is %0.0f mm ",b)
  printf("\n L is %0.3f m ",L);
  