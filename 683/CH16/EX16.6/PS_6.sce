// sum 16-6
clc;
clear;
d=52;
W=2.2*10^3;
p=8;
r1=15;
r2=30;
rm=(r1+r2)/2;
u1=0.15/cosd(14.5);
dm=d-(p/2);
alpha=atan(p/(%pi*dm));
phi=atan(u1);
Ts=W*dm*tan(alpha+phi)/2;
u2=0.12;
Tc=u2*W*rm;
T=10^-3*(Ts+Tc);
N=40;
w=2*%pi*N/60;
P=T*w*10^-3;
To=W*dm/2*tan(alpha);
n=To/(T*10^3);

  // printing data in scilab o/p window
  printf("P is %0.2f KW     ",P);
  printf("\n n is %0.4f      ",n);
