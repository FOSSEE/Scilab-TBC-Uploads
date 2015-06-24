// sum 24-3
clc;
clear;
d=12;
sigut=1960;
Pb=0.0025*sigut;
Ds=480;
F=Pb*d*Ds/2;
W=F*2*10^-3;

  // printing data in scilab o/p window
  printf("W is %0.3f kN   ",W);
