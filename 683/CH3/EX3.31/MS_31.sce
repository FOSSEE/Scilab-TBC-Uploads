// sum 3-31
clc;
clear;
M=60*10^3;
y1=((5*1*2.5)+(6*1*5.5))/(5+6);
y2=6-y1;
R=12;
R1=R-y2;
R1=10.136
R2=11.136;
R3=R1+6;
B=6;
b=1;
A=(B*b)+((B-1)*b);
//Let x= h^2/R^2
x=R/A*((B*log(R2/R1))+(b*log(R3/R2)))-1;
x=1/x;
//Let Maximum compressive stress at B be sigB
sigB=M/(A*R)*(1+(x*y1/(R+y1)))*10^-2;
//Let Maximum tensile stress at A be sigA
sigA=M/(A*R)*((y2*x/(R-y2))-1)*10^-2;
// printing data in scilab o/p window
  printf("sigB is %0.1f MPa     ",sigB);
  printf("\n sigA is %0.0f MPa     ",sigA);
  
  //The answer to R^2/h^2 is calculated incorrectly in the book.
