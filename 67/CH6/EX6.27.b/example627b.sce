//Example 6.27b
//x(t)=(cos(3t))^3
clc;
syms t;
x=(cos(3*t))^3;
X=laplace(x);