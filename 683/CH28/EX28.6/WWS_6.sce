//sum 28-6
clc;
clear;
Z1=1;
Z2=30;
q=10;
m=6;
//Let the ultimate strength of gear is sigut
//Let the allowable strenth of wheel is sigb
sigut=450;
sigb=84;
N=1200;
n=N/Z2;
alpha=20*%pi/180;
d=m*q;
D=Z2*m;
b=3*d/4;
V=2*%pi*n*D/(2*60*1000);
Cv=6/(6+V);
y=0.154-(0.912/Z2);
Y=%pi*y;
Sb=sigb*b*Cv*m*Y;
K=0.415;
Sw=b*D*K;

  // printing data in scilab o/p window
  printf("Sb is %0.0f N  ",Sb);
  printf("\n Sw is %0.0f N  ",Sw);

//The difference in the value of Sb is due to rounding-off the values.
