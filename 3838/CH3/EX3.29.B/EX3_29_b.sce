//Example 3.29.b
clc;
syms s t;
x=laplace((1/3)*(exp(-2*t)-exp(-5*t));
y=laplace(exp(-5*t));
z=x/y;
f=ilaplace(z);
disp(f);
