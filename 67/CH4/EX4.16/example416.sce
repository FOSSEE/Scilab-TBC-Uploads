//Example 4.16
//Find DTFT of x[n]=(a^n)u[n],for 0<a<1
clc;
syms w a n;
x=a^n;
X=symsum(x*exp(-%i*w*n),n,0,%inf);