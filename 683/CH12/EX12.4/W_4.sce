// sum 12-4
clc;
clear;
P=6*10^3;
e=150+(100/2);
T=P*e;
A=200;
Td=P/A;
r=sqrt(2*50^2);
Ixx=2*(100*50^2);
Iyy=2*100^3/12;
IG=Ixx+Iyy;
Ts=r*T/IG;
Tmax=sqrt((Ts*sind(45))^2+(Td+(Ts*cosd(45)))^2);
Ta=80;
t=Tmax/Ta;
h=sqrt(2)*t;
h=3;
  // printing data in scilab o/p window
  printf("h is %0.0f mm     ",h);