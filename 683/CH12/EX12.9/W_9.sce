// sum 12-9
clc;
clear;
Ta=60;
l1=60;
l2=40;
P1=Ta*0.707*l1;
P2=Ta*0.707*l2;
P=80*10^3;
h=P/(P1+P2);
h=20;
a=(P2*100)/(P1+P2);

  // printing data in scilab o/p window
  printf("h is %0.0f mm     ",h);
  printf("\n a is %0.0f mm     ",a);