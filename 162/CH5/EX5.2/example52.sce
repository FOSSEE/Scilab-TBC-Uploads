//Example 5.2
clc;
syms t;
h=%e^(-3*t);
H=laplace(h);
disp(H,'Transfer Function is');