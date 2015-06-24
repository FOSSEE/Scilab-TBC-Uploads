//Example 4.3
//Find DTFT of unit impluse
clc;
syms w n;
x=1;
X=symsum(x*exp(-%i*w*n),n,0,0);