// sum 3-28
clc;
clear;
rho=0.0078*9.81*10^-6;
sigc=150;
g=9.81;
V=sqrt(sigc*g/rho)*10^-3;
R=1;
w=V/R;
N=w*60/(2*%pi);

  // printing data in scilab o/p window
  printf("N is %0.3f rpm    ",N);