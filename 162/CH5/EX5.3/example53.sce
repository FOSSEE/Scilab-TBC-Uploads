//Example 5.3
clc;
syms t;
h=%e^(-3*t);
x=%e^(-4*t);
H=laplace(h);
X=laplace(x);
Y=X*H;
y=ilaplace(Y);
disp(y,'y(t)=');