//Example 7.68a
//Z transform of x[n]=u[n]
clc;
syms n z;
x=1;
X=symsum(x*(z^-n),n,0,%inf);