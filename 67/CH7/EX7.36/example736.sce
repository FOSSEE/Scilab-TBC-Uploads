//Example 7.36
clc;
syms z n;
x1=2^n;
X1=symsum(x1*(z^-n),n,0,%inf);
x2=3^n;
X2=symsum(x2*(z^-n),n,0,%inf);
X=3*X1-4*X2;