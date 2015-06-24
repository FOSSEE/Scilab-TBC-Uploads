// sum 9-3
clc;
clear;
d=18;
p=2.5;
dr=d-(1.2268*p);
dm=(d+dr)/2;
alpha=atan(p/(%pi*dm));
theta=%pi*30/180;
u1=0.15;
u2=0.13;
x=(tan(alpha)+(u1/cos(theta)))/(1-(tan(alpha)*u1/cos(theta)));
K=dm*x/(2*d)+(0.625*u2);

  // printing data in scilab o/p window
  printf("K is %0.5f      ",K);