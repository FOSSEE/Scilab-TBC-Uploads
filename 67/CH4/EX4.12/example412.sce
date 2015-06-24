//Example 4.12
//Find DTFT of x[n]=u[n]
clc;
syms w n;
x=1;
X=symsum(x*exp(-%i*w*n),n,0,%inf);