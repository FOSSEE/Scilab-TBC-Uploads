//Example 6.27e
clc;
syms t s;
x1=1-%e^t;
X1=laplace(x1);
X=integ(X1,s,s,%inf);