//Example 6.5
clc;
syms z n;
x1=4*(5^n);
x2=3*(4^n);
X1=symsum(x1*(z^-n),n,0,%inf);
X2=symsum(x2*(z^-n),n,0,%inf);
X=X1-X2;