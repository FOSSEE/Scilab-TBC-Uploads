//Scilab Code for Example 2.8 of Signals and systems by
//P.Ramakrishna Rao
//Unilateral Laplace Transform
clear;
clc;
syms t s
s=%s;
a=ilaplace(1/(s^3+s^2))
b=a-3;
disp(a*'u(t)'+b*'u(t-3)',"x(t)=")
