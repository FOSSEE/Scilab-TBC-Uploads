//Example 4.3
//Laplace transform of f(t)=3-2%e^(-4t)
clc;
syms t;
f=3-2*%e^(-4*t);
F=laplace(f);
disp(F);