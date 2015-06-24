clear;
clc;
syms t s
H1=laplace(%e^(-2*t))
H2=laplace(2*%e^(-t))
H=H1*H2;
h=ilaplace(H)
disp(h*'u(t)',"h(t)=")