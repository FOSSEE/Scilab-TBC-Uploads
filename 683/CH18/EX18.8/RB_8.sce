// sum 18-8
clc;
clear;
n=3;
P=3;
//Let Reliability of system be R
R=0.83;
L94=6;
R94=(R)^(1/n);
x=(log(1/R94)/log(1/0.90))^(1/1.17);
L90=L94/x;
C=P*L90^(1/3);

  // printing data in scilab o/p window
  printf("C is %0.3f kN    ",C);
  
  //The difference in the value of C is due to rounding-off of value of L.