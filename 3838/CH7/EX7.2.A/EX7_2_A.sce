//Example 7.2.A
clc;
syms a z n;
x=1;
X=symsum(x*(z^-n),n,0,%inf);
disp(X,'X(z)=');
