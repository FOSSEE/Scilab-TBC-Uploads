// sum 16-4
clc;
clear;
d=28;
P=300;
L=180;
p=8;
r1=16;
r2=46;
rm=(r1+r2)/2;
u1=0.12;
u2=0.15;
dm=d-(p/2);
alpha=atan(p/(%pi*dm));
phi=atan(u1);
T=P*L;
F=T/((dm*tan(alpha+phi)/2)+(u2*rm));
F=F*10^-3;

  // printing data in scilab o/p window
  printf("F is %0.3f kN     ",F);