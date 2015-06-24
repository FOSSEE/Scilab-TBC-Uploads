// sum 18-7
clc;
clear;
P=3500;
Lh=6000;
N=1400;
R98=0.98;
R90=0.9;
L98=Lh*60*N/10^6;
x=(log(1/R98)/log(1/R90))^(1/1.17);
L90=L98/x;
C=P*L90^(1/3);

  // printing data in scilab o/p window
  printf("C is %0.0f N    ",C);
  
  //The difference in the value of C is due to rounding-off of value of L.