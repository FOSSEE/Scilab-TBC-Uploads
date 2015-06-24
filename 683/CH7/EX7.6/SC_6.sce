// sum 7-6
clc;
clear;
P=1500;
FOS=2;
Pd=FOS*P;
l=280;
E=207*10^3;
I=Pd*l^2/(%pi^2*E);
D=(64*I/(%pi*(1-0.8^4)))^(1/4);
D=8;
d=6.4;

  // printing data in scilab o/p window
  printf("D is %0.1f mm     ",D);
  printf("\n d is %0.1f mm     ",d);