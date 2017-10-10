//Example 3.30.A
clc;
syms s t;
x=laplace(3*t);
y=laplace(1);
z=x*y;
f=ilaplace(z);
disp(f);
