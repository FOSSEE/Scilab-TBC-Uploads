// sum 17-3
clc;
clear;
d=60;
r=30;
l=60;
c=0.8*10^-3*r;
ho=0.2*c;
W=21000/2;
p=W/(l*d);
S=0.0446;
nj=1440/60;
u=S*(c/r)^2*p/nj;
u=u*10^9;
// since Q/(r*nj*l)=4.62
Q=4.62*r*c*nj*l;
Q=Q*60/10^6;

  // printing data in scilab o/p window
  printf("u is %0.3f cP ",u);
  printf("\n Q is %0.4f lpm ",Q);