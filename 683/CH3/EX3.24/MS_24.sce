// sum 3-24
clc;
clear;
G=84*10^3;
T=28*10^3;
l=1000;
theta=%pi/180;
J=T*l/(G*theta);
d=(J*32/%pi)^(1/4);

  // printing data in scilab o/p window
  printf("d is %0.1f mm    ",d);