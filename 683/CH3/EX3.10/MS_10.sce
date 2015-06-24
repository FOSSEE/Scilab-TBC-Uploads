// sum 3-10
clc;
clear;
G=38*10^3;
d=10;
P=5*10^3;
A=%pi*d^2/4;
sig=P/A;
deld=0.0002;
//Let the lateral strain be E1
E1=deld/d;
v=2*deld*G/(sig-(2*deld*G));
E=2*G*(1+v)*10^-3;

  // printing data in scilab o/p window
  printf("v is %0.4f     ",v);
  printf("\n E is %0.3f kN/mm^2     ",E);