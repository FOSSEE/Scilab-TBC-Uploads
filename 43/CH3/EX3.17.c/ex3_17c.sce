//Ex 3.17c
clc;
syms z n B k;
x=exp(B*k);
X=symsum(x*z^(-n),n,0,%inf);
disp(X);