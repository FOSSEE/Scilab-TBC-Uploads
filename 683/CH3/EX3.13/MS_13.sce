// sum 3-13
clc;
clear;
R1=50;
p=75;
pmax=125;
R2=sqrt((pmax+p)*R1^2/(pmax-p));
t=R2-R1;

  // printing data in scilab o/p window
  printf("t is %0.1f mm    ",t);