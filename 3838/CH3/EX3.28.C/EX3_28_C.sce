//Example 3.28.c
clc;
syms s t;
x=laplace(t);
y=laplace(exp(-5*t));
z=x*y;
f=ilaplace(z);
disp(f);
