// sum 24-1
clc;
clear;
P=150000;
m=0.4;
D=1.8;
d=0.6;
C=4.2;
V=15;
Fc=m*V^2;
BL=44.81*10^3;
FOS=35;
F1=BL/FOS;
theta=%pi-(2*asin((D-d)/(2*C)));
beta=22.5*%pi/180;
u=0.13;
x=u*theta/sin(beta);
F2=(F1-Fc)/exp(x);
n=P/((F1-F2)*V);
n=13;

  // printing data in scilab o/p window
  printf("n is %0.0f    ",n);
