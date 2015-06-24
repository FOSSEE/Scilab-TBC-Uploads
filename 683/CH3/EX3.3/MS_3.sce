// sum 3-3
clc;
clear;
m=25;
v=3;
E=210*10^3;
KE=0.5*m*v^2;
d=30;
L=2000;
A=%pi*d^2/4;
U=A*L/(2*E);
del=4*10^-5*A;
W=A*del;
sigi=sqrt(KE*10^3/(W+U));

  // printing data in scilab o/p window
  printf("del is %f N/mm^2     ",sigi);
