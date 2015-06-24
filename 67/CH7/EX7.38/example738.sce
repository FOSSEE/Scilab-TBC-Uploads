//Example 7.38
clc;
syms a z n;
x=-(a^n);
X=symsum(x*(z^-n),n,-%inf,-1);