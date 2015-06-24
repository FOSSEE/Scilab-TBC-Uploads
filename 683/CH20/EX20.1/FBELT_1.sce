// sum 20-1
clc;
clear;
b=0.2;
P=50*10^3;
v=20;
m=1.95;
d=0.3;
D=0.9;
C=5.8;
u=0.4;
//Let density be rho
rho=1000;
E=40;
//Let T1-T2 = T
T=P/v;
//Let the centrifugal tension be Tc
Tc=m*v^2;
alpha=asind((D+d)/(2*C));
theta=180+(2*alpha);
theta=theta*%pi/180;
x = exp(u*theta);
T2=(((1-x)*Tc)-T)/(1-x);
//T1=T+T2;
T1=T+T2;
t=m/(b*rho)*10^3;
//Let maximum stress be sigmax
b=200;
d=300;
sigmax=(T1/(b*t)+((E*t)/d));
sigmin=(T2/(b*t));

  // printing data in scilab o/p window
  printf("T1 is %0.1f N ",T1);
  printf("\n T2 is %0.1f N ",T2);
  printf("\n t is %0.2f mm ",t)
  printf("\n theta is %0.2f rad ",theta)
  printf("\n sigmax is %0.2f N/mm^2 ",sigmax);
  printf("\n sigmin is %0.3f N/mm^2 ",sigmin);
  
  //The answer for T1 is miscalculated in the book.