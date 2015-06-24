//Example 7.1
clc;
syms a z n;
x=a^n;
X=symsum(x*(z^-n),n,0,%inf);
disp(X,'X(z)=');