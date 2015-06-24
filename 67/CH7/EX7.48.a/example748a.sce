//Example 7.48a
clc;
syms z n;
x1=2^n;
X1=symsum(x1*(z^-n),n,0,%inf);
x2=(1/2)^n;
X2=symsum(x2*(z^-n),n,0,%inf);
X=X1+(3*X2);