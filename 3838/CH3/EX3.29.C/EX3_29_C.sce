//Example 3.29.C
clc;
syms s t;
x=laplace((1/25)*(exp(-5*t)+5*t-1));
y=laplace(exp(-5*t));
z=x/y;
f=ilaplace(z);
disp(f);
