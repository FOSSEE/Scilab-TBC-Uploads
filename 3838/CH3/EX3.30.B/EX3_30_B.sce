//Example 3.30.B
clc;
syms s t;
x=laplace(exp(-5*t));
y=laplace(1);
z=x*y;
f=ilaplace(z);
disp(f);
