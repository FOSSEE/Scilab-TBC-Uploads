//Example 7.10
//Z-transform of (2^n)u[n-2]
clc;
syms n z;
x=2^n;
X=symsum(x*(z^-n),n,2,%inf);
disp(X,'X(z)=');