// sum 17-2
clc;
clear;
l=60;
d=60;
r=d/2;
ho=0.008;
c=0.04;
S=0.0446;
nj=1260/60;
W=6000;
p=W/(l*d);
u=S*(c/r)^2*p/nj;
u=u*10^9;

  // printing data in scilab o/p window
  printf("u is %0.3f cP ",u);