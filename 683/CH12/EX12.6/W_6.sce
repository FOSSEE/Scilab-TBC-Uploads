// sum 12-6
clc;
clear;
P=16*10^3;
l=300;
r=50;
M=P*l;
A=2*%pi*r;
Ixx=%pi*r^3;
sigb=M*r/Ixx;
Td=P/A;
Tmax=sqrt((sigb/2)^2+(Td^2));
Ta=90;
t=Tmax/Ta;
h=sqrt(2)*t;
h=5;
  // printing data in scilab o/p window
  printf("h is %0.0f mm     ",h);