// sum 3-33
clc;
clear;
F=50;
B1=4;
B2=8;
D=12;
y1=D/3*(B1+(2*B2))/(B1+B2);
y2=12-y1;
R=6+y2;
A=(B1+B2)/2*D;
//Let x= h^2/R^2
a=(B1+((B2-B1)*(y1+R)/D))*log((R+y1)/(R-y2))
x=R/(A)*(a -(B2-B1));
x=x-1;
x=1/x;
KG=y2+8;
M=F*KG;
sigd=F/A;
//Let bending stress at a be sigA
sigA=M/(A*R)*(1+(x*y1/(R+y1)));
//Let bending stress at b be sigB
sigB=M/(A*R)*((y2*x/(R-y2))-1);
sigA=(sigA-sigd)*10;
sigB=(sigB+sigd)*10;
// printing data in scilab o/p window
  printf("sigA is %0.2f MPa     ",sigA);
  printf("\n sigB is %0.2f MPa     ",sigB);
  
  //The difference in the answers are due to rounding-off of values.

