//Ex 3.17b
clc;
syms z n;
x=1;
X=symsum(x*z^(-n),n,0,%inf);
disp(X);