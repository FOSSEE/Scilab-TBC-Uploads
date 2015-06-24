// sum 3-4
clc;
clear;
P=40*10^3;
A=60*18;
sig=P/A;
r1=12;
b1=60;
SCF1=1.7;
sigmax1=sig*SCF1;
r2=24;
b2=60;
SCF2=1.5;
sigmax2=sig*SCF2;

  // printing data in scilab o/p window
  printf("sigmax1 is %f N/mm^2     ",sigmax1);
  printf("\n sigmax2 is %f N/mm^2     ",sigmax2);