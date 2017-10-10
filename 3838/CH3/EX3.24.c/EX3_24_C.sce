//Example 3.24.C
clc;
Syms s t;
x=laplace((1+0.5*exp(-6*t)+0.2*exp(-3*t)),t,s);
disp(x);
