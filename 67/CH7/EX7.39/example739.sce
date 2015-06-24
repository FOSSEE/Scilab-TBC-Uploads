//Example 7.39
clc;
syms z n a;
x1=(a^n);
X1=symsum(x1*(z^-n),n,0,%inf);
X=(-z)*(diff(X1,z));