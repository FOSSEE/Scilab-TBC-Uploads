// sum 16-7
clc;
clear;
alpha=atan(2*0.2/(%pi*0.9));
u1=0.15;
phi=atan(u1);
P=200;
L=250;
Tt=P*L;
W=10*10^3;
u2=0.15;
x=Tt/W;
d=x/0.1716;
d=30;
p=6;
dr=0.8*d;
d=24;
p=5;
dr=d-p;
dm=d-(p/2);

  // printing data in scilab o/p window
  printf("d is %0.0f mm     ",d);
  printf("\n p is %0.0f mm     ",p);