//Example 6.22
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z transform of rˆn.cos(wo∗n)
clc ;
clear;
syms r wo n z ;
x1 =(r^n)*exp(%i*wo*n) ;
X1 = nusum(x1*(z^-n),n,0,%inf);
x2 =(r^n)*exp(-%i*wo*n) ;
X2 = nusum(x2*(z^-n),n,0,%inf) ;
X =(X1+X2)/2 ;
disp(X,'X(z)=') ;
disp('ROC : |z|>r');
