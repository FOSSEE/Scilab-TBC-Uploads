//Example 7.52
//Z transform of x[n]=(2^n)u[n-2]
clc;
syms z n;
x=2^n;
X=symsum(x*(z^-n),n,2,%inf);