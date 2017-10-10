//Example 3.27.B
clc;
syms s t;
x=laplace(exp(-2*t));
y=laplace(1);
z=x*y;
f=ilaplace(z);
disp(f);
