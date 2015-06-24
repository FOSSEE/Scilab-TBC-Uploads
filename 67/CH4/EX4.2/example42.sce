//Example 4.2
//Find DTFT of x[n]=(a^n)u[-(n+1)]
clc;
syms w a n;
x=a^n;
X=symsum(x*exp(-%i*w*n),n,-%inf,-1);