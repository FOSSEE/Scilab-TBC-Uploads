// sum 28-5
clc;
clear;
Z1=2;
Z2=54;
q=10;
m=8;
P=4000;
A=1.8;
K=16;
N=1000;
u=0.028;
lambda=atan(Z1/q);
alpha=20*%pi/180;
d=m*q;
Vt=2*%pi*N*d/(2*60*1000);
Vs=Vt/cos(lambda);
x=cos(alpha);
y=tan(lambda);
z=(cos(lambda))/sin(lambda);
n=(x-(u*y))/(x+(u*z));
delT=P*(1-n)/(K*A);

  // printing data in scilab o/p window
  printf("n is %0.3f   ",n);
  printf("\n delT is %0.2f deg  ",delT);
