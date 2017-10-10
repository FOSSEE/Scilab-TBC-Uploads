//Example 3.28.D
clc;
syms s t;
x=laplace(cos(t));
y=laplace(t);
z=x*y;
f=ilaplace(z);
disp(f);
