// sum 16-5
clc;
clear;
d=25;
p=8;
F=392.4;
L=250;
l=p*2;
u=0.14;
dm=d-(p/2);
alpha=atan(l/(%pi*dm));
phi=atan(u);
T=dm*tan(alpha+phi)/2;
M=F*L;
P=M/T*10^-3;

  // printing data in scilab o/p window
  printf("P is %0.1f kN     ",P);