//Chapter 15, Problem 28
clc;
P=90*10^3;                   //power
pf=0.5;                     //power factor
S=P/pf;                     //apparent power
phi=acos(pf);
Q=S*sin(phi);                  //reactive power
printf("Reactive power = %.1f Kvar",Q/1000);
