//Example 3.28.A
clc;
syms s t;
x=laplace(2);
y=laplace(1);
z=x*y;
f=ilaplace(z);
disp(f);
