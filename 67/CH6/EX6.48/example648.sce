//Example 6.48
clc;
syms t s;
x=1+%e^(-3*t)-%e^(-t);
X=laplace(x);
H=1/((s+1)*(s^2+s+1));
Y=X*H;
y=ilaplace(Y);