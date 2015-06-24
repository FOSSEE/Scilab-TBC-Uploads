// sum 7-5
clc;
clear;
sigc=330;
a=1/7500;
t=4;
A=14.5*t^2;
l=300;
Kx=sqrt(1.4626*t^2);
Pr=sigc*A/(1+(a*(l/Kx)^2));
FOS=2;
P=Pr/FOS*10^-3;

  // printing data in scilab o/p window
  printf("P is %0.4f KN     ",P);