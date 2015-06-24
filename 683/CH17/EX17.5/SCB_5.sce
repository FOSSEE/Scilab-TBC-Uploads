// sum 17-5
clc;
clear;
W=22000;
nj=960/60;
p=2.4;
u=20*10^-9;
d=sqrt(W/p);
d=96;
r=d/2;
l=d;
S=0.0446;
pact=W/(l*d);
//x=r/c;
x=sqrt(S*pact/(u*nj));
c=r/x;
ho=0.2*c;
Q=r*c*nj*l*4.62;
Q=Q*60/10^6;

  // printing data in scilab o/p window
  printf("d is %0.0f mm ",d);
  printf("\n l is %0.0f mm ",l);
  printf("\n ho is %0.4f mm ",ho);
  printf("\n Q is %0.3f lpm ",Q);
  
  //The difference in answer to Q is due to rounding -off the value of c.