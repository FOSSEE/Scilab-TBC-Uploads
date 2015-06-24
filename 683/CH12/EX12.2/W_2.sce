// sum 12-2
clc;
clear;
FOS=3;
Ta=95/FOS;
P=350*10^3;
h=12.5;
t=0.707*h;
l=P/(2*t*Ta);

  // printing data in scilab o/p window
  printf("l is %0.0f mm     ",l);