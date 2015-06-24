//Example 4.29
clc;
syms t;
h=0.24*(%e^(-0.36*t)-%e^(-2.4*t));
H=laplace(h);
x=1;
X=laplace(x);
Y=X*H;
y=ilaplace(Y);
disp(y);