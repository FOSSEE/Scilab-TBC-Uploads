//Example 4.1
//Find the DTFT of (a^n)u[n],for |a|<1
clc;
syms w a n;
x=a^n;
X=symsum(x*exp(-%i*w*n),n,0,%inf);