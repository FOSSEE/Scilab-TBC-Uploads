//Example 6.26
//Find laplace transform x(t)=2e^(-3t)u(t)-e^(-2t)u(t)
clc;
syms t;
x=2*%e^(-3*t)-%e^(-2*t);
X=laplace(x);