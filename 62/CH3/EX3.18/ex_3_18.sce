clear;
clc;
syms t s
x=(5*s+13)/(s*(s^2+4*s+13));
X=ilaplace(x);
disp(X*'u(t)',"x(t)=")