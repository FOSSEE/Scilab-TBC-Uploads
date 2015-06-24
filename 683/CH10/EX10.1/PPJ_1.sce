// sum 10-1
clc;
clear;
sigta=140/2;
nt=0.75;
//Let the flow rate be Q
Q=0.25;
v=1.2;
D=1.13*sqrt(Q/v);
D=520;
p=0.7;
C=9;
t=(p*D)/(2*sigta*nt)+C;

  // printing data in scilab o/p window
  printf(" t is %0.1f mm     ",t);