//Example 3.29.d
clc;
syms s t;
x=laplace(1-cos(t));
y=laplace(t);
z=x/y;
f=ilaplace(z);
disp(f);
