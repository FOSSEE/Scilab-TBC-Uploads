//Ex 3.17a
clc;
syms z n;
x=1;
X=symsum(x*z^(-n),n,0,0);
disp(X);