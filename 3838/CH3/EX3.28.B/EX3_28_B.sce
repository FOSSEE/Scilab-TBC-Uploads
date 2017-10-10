//Example 3.28.B
clc;
syms s t;
x=laplace(exp(-2*t));
y=laplace(exp(-5*t));
z=x*y;
f=ilaplace(z);
disp(f);
