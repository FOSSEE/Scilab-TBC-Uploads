// sum 16-1
clc;
clear;
d=30;
W=20*10^3;
r1=8;
r2=16;
p=6;
u1=0.2;
u2=0.15;
dm=d-(p/2);
alpha=atan(p/(%pi*dm));
phi=atan(u1);
rm=(r1+r2)/2;
Ttr=W*((dm*tan(alpha+phi)/2)+(u2*rm));
Ttr=Ttr*10^-3;

  // printing data in scilab o/p window
  printf("Ttr is %0.3f Nm     ",Ttr);
  
  //The answer to Ttr is slightly different than in the book due to rounding-off of values.