//Example 6.27a
//Laplace transform of x(t)=t^3+3*t^2-6*t+4
clc;
syms t;
x=t^3+3*t^2-6*t+4;
X=laplace(x);