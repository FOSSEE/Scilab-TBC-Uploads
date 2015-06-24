clear;
clc;
syms t s a
H=1/(s+a);
h=ilaplace(H)
disp(h*'u(t)',"h(t)=")