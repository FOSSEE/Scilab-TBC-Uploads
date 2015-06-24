// sum 3-21
clc;
clear;
D=30;
R=15;
T=0.56*10^6;
G=82*10^3;
J=%pi*R^4/2;
T1=T*R/J;
l=1000;
theta=T*l/(G*J)*180/%pi;
r=10;
Tr=T1*r/R;

  // printing data in scilab o/p window
  printf("T1 is %0.2f N/mm^2    ",T1);
  printf("\n theta is %0.2f deg    ",theta);
  printf("\n Tr is %0.2f N/mm^2    ",Tr);