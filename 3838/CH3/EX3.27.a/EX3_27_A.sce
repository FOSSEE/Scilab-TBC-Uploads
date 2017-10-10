//Example 3.27.A
clc;
a=2;
syms s t;
y=laplace(exp(-a*t));
z=1*y;
f=ilaplace(z);
disp(f);
+9
