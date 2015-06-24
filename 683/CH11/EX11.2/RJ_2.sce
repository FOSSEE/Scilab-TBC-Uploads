// sum 11-2
clc;
clear;
t=22;
t1=5*t/8;
d=30;
p=100;
sigt=75;
P=(p-d)*t*sigt;
Ts=(2*P)/(%pi*d^2);
sigb=P/(d*t);
P=P*10^-3
  // printing data in scilab o/p window
  printf("P is %0.1f kN     ",P);
  printf("\n Ts is %0.1f MPa     ",Ts);
  printf("\n sigb is %0.0f N/mm^2     ",sigb);