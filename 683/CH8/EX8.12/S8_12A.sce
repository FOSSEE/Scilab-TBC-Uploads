// sum 8-12A
clc;
clear;
W=80000;
sigbfr=500;
L=1100;
Nf=3;
Ng=10;
N=Nf+Ng;
t=((1.5*W*L)/(N*6*sigbfr))^(1/3);
t=15;
b=6*t;
E=207*10^3;
deli=(W*(L^3))/(8*E*N*b*(t^3));
Wi=(W*Nf*Ng)/(N*((3*Nf)+(2*Ng)));


 // printing data in scilab o/p window
 printf("t is %0.1f mm ",t);
 printf("\n deli is %0.1f mm ",deli);
 printf("\n Wi is %0.0f N ",Wi);