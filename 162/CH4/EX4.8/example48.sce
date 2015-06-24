//Example 4.8
//Laplace transform of x(t)=%e^(3t)u(-t)+%e^(t)u(t)
clc;
syms t;
x1=%e^(3*t);
x2=%e^t;
X1=laplace(x1);
X2=laplace(x2);
X=X2-X1;//since x1 is form -%inf to 0
disp(X);