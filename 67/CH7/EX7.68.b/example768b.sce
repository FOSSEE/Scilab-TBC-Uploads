//Example 7.68b
//Z transform of x[n]=-u[-n-1]
clc;
syms n z;
x=-1;
X=symsum(x*(z^-n),n,-%inf,-1);