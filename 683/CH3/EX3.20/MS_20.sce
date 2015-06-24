// sum 3-20
clc;
clear;
H=20;
D=5;
d=3;
rho=21;
sigd=rho*H;
p=2;
A=D*H;
P=p*A;
M=P*H/2;
Z=%pi*(D^4-d^4)/(32*D);
sigb=M/Z;
sigmax=420+sigb;
sigmin=420-sigb;

  // printing data in scilab o/p window
  printf("sigmax is %0.2f kN/m^2    ",sigmax);
  printf("\n sigmin is %0.2f kN/m^2    ",sigmin);