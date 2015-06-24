// sum 18-1
clc;
clear;
Pr=16*10^3;
u=0.0011;
F=u*Pr;
r=20*10^-3;
//Let frictional moment be M
M=F*r;
N=1440;
w=2*%pi*N/60;
Pf=M*w;

  // printing data in scilab o/p window
  printf("Pf is %0.2f W    ",Pf);