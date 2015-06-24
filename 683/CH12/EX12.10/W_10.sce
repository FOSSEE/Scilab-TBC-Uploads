// sum 12-10
clc;
clear;
P=300*10^3;
l=500;
A=2*l;
Td=P/A;
T=(350-250)*P;
IG=(l^3*2/12)+(l*2*5^2);
r=sqrt(250^2+5^2);
Ts=T*r/IG;
Ts=Ts+Td;
Ta=110;
t=Ts/Ta;
h=t/0.707;
h=9;

  // printing data in scilab o/p window
  printf("h is %0.0f mm     ",h);
