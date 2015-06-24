// sum 28-4
clc;
clear;
Z1=2;
Z2=40;
q=8;
m=5;
d=q*m;
P=1.2;
lambda=atan(Z1/q);
N=1000;
Vt=2*%pi*N*20/(60*1000);
Vs=Vt/cos(lambda);
u=0.032;
alpha=20*%pi/180;
x=cos(alpha);
y=tan(lambda);
z=(cos(lambda))/sin(lambda);
n=(x-(u*y))/(x+(u*z));
//Let power output be Po
Po=P*n;
//Let power lost in friction be Pf
Pf=P-Po;

  // printing data in scilab o/p window
  printf("P is %0.1f kW  ",P);
  printf("\n Po is %0.3f kW  ",Po);
  printf("\n Pf is %0.3f kW  ",Pf);
  
