//Example 4.22
//Find DTFT of x[n]=((1/2)^(n-1))u[n-1]
clc;
syms w n;
x=(1/2)^(n-1);
X=symsum(x*exp(-%i*w*n),n,1,%inf);