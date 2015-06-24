// sum 3-14
clc;
clear;
R1=40;
R2=60;
B=50;
E=210*10^3;
e=41*10^-6;
sig=2*R1^2/(R2^2-R1^2);
p=E*e/sig;
Fr=p*2*%pi*R1*B;
u=0.2;
Fa=u*Fr*10^-3;

  // printing data in scilab o/p window
  printf("Fa is %0.2f kN    ",Fa);