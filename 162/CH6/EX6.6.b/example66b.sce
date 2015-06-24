//Example 6.6b
clc;
syms z n;
x=(1/3)^n;
X1=symsum(x*(z^-n),n,0,%inf);
X2=symsum(x*(z^-n),n,8,%inf);
X=X1-X2;