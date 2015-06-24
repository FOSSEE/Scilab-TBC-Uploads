// sum 7-2
clc;
clear;
l=500;
E=70*10^3;
P=20*10^3;
FOS=2;
d=P*2*12*4*l^2/((%pi)^2*E);
d=(sqrt(8)*d)^0.25;
b=d/sqrt(8);

  // printing data in scilab o/p window
  printf("d is %0.2f mm     ",d);
  printf("\n b is %0.2f mm     ",b);