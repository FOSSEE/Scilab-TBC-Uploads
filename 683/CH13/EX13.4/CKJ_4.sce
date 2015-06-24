// sum 13-4
clc;
clear;
P=50*10^3;
sigp=380;
FOS=4;
sigca=80;
Ta=50;
sigta=sigp/FOS;
At=P/sigta;
d=30;
d1=1.5*d;
t=P/(sigca*d1);
t=14;
A=(%pi*(d1^2)/4)-(d1*t);
//let tearing stress be sigt
sigt=P/A;
b=P/(2*t*Ta);
b=36;

  // printing data in scilab o/p window
  printf("d is %0.0f mm     ",d);
  printf("\n sigt is %0.1f MPa     ",sigt);
  printf("\n b is %0.0f mm     ",b);
  
  //The answer to tearing stress in bolt 'sigt' is calculated incorrectly in the book.