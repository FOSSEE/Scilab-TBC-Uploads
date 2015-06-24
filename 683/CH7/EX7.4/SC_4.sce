// sum 7-4
clc;
clear;
Iyy=193.4+(2*1.2*1.5^3/12);
E=200*10^3;
l=500;
Pe=(%pi^2)*E*Iyy*10^5/(l^2);
A=35.53+(2*1.2*15);
sige=Pe/7530;
k=sqrt(Iyy/A);
xc=75;
sig=80;
sigo=20.875;
A=A*100;
P=sigo*A;
P=P*10^-3;

  // printing data in scilab o/p window
  printf("P is %0.1f kN     ",P);
  
  //The difference in the value of P is due to rounding-off the digits.