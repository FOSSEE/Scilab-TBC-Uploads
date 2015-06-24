// sum 23-7
clc;
clear;
Vi=20*5/18;
Vf=0;
m=80;
pmax=1;
u=0.1;
S=50;
KE=0.5*m*Vi^2;
N=KE/(u*S*2);
t=sqrt(N/(pmax*3));
b=3*t;

  // printing data in scilab o/p window
  printf("KE is %0.1f Nm ",KE);
  printf("\n N is %0.2f N ",N);
  printf("\n t is %0.1f mm ",t);
  printf("\n b is %0.1f mm ",b);

//The difference in the answers are due to rounding-off of values.
