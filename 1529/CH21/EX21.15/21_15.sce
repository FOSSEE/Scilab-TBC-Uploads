//Chapter 21, Problem 15
clc;
e1=200;                         //primary voltage
e2=400;                         //secondary voltage
v2=387.6;                       //secondary terminal voltage
reg=((e2-v2)/e2)*100;           //regulation
printf("Regulation = %.1f percent",reg);
