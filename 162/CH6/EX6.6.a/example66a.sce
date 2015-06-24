//Example 6.6a
clc;
syms z n;
x=(1/3)^n;
X=symsum(x*(z^-n),n,-%inf,0);