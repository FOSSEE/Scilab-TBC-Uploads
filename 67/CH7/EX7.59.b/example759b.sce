//Example 7.59b
//Z transform of x[n]=(a^-n)u[-n-1]
clc;
syms a n z;
x=(a^-n);
X=symsum(x*(z^-n),n,-%inf,-1);