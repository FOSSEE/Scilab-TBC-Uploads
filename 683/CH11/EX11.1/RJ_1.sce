// sum 11-1
clc;
clear;
t=20;
p=100;
d=25;
sigt=40;
P=(p-d)*t*sigt;
Ts=(4*P)/(%pi*d^2);
sigb=P/(d*t);

  // printing data in scilab o/p window
  printf("P is %0.0f N     ",P);
  printf("\n Ts is %0.2f MPa     ",Ts);
  printf("\n sigb is %0.0f MPa     ",sigb);