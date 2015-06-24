// sum 3-11
clc;
clear;
D=1500;
p=1.2;
sigt=100;
sigc=p*D/2;
siga=p*D/4;
P=sigc*2*10^3;
n=0.75;
t=sigc/(n*sigt);

  // printing data in scilab o/p window
  printf("t is %0.1f mm    ",t);