// sum 15-7
clc;
clear;
T=47*10^3;
M=32*10^3;
d=20;
siga=32*M/(%pi*d^3);
Tm=16*T/(%pi*d^3);
sige=75;
Tys=165;
n=1/sqrt((siga/sige)^2+(Tm/Tys)^2);

  // printing data in scilab o/p window
  printf("n is %0.2f     ",n);
  