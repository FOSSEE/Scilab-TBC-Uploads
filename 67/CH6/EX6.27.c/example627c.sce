//Example 6.27c
clc;
syms a b t;
x=sin(a*t)*cos(b*t);
X=laplace(x);