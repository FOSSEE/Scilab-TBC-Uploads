// sum 3-2
clc;
clear;
d=5;
A=%pi*d^2/4;
l=100*10^3;
W=600;
E=210*10^3;
w=0.0784*10^-3;
del1=W*l/(A*E);
del2=w*l^2/(2*E);
del=del1+del2;

  // printing data in scilab o/p window
  printf("del is %f mm     ",del);
