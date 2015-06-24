clear;
clc;
syms n s t;
//y(0)=2 y'(0)=1
X=laplace(%e^(-t));
Y=(X+2*s+11)/(s^2+5*s+6);
y=ilaplace(Y)
disp(y,"y(t)=")