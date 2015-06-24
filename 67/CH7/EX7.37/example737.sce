//Example 7.37
clc;
syms z n;
x=(1/2)^n;
X=symsum(x*(z^-n),n,0,%inf);