//Example 7.2.B
clc;
syms a z n;
x=(0.5)^(n);
X=symsum(x*(z^-n),n,0,%inf);
disp(X,'X(z)=');
