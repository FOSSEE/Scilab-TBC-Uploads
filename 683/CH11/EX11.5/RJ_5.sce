// sum 11-5
clc;
clear;
a=50;
b=75;
P=36*10^3;
d=24;
Ta=60;
n=9;
A=%pi*d^2/4;
Td=P/(n*A);
theta=atan(b/a);
Ts=54.64;
r2=90.184;
e=A*29575.7/P;

  // printing data in scilab o/p window
  printf(" e is %0.1f mm     ",e);