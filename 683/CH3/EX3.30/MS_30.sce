// sum 3-30
clc;
clear;
r=500;
to=15;
N=3500;
w=2*%pi*N/60;
sig=80;
w1=0.07644*10^-3;
g=9810;
a=w1*w^2*r^2/(2*sig*g);
t=to*exp(-a);

  // printing data in scilab o/p window
  printf("t is %0.3f mm  ",t);