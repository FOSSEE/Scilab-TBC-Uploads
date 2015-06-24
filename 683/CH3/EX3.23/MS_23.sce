// sum 3-23
clc;
clear;
D=100;
d=75;
r=6;
K=1.45;
P=20*746;
N=400;
w=2*%pi*N/60;
T=P/w;
Ts=16*T*10^3/(%pi*d^3);
Tmax=K*Ts;

  // printing data in scilab o/p window
  printf("Tmax is %0.3f MPa    ",Tmax);