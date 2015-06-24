//Scilab Code for Example 2.2 of Signals and systems by
//P.Ramakrishna Rao
//Inverse Laplace Transform
clc;
clear;
syms t s
X=(s+2)/(s^2+8*s+25)
f4=ilaplace(X);
disp(f4*'u(t)',"x(t)=");
//t>=0
