//Example 3.22
clc;
syms s t;
x=laplace(exp(-2*t)*cos(3*t),t,s);
y=laplace(4*sin(3*t),t,s);
z=x*y
i=ilaplace(z);
disp(i);
