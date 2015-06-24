//Example 4.4
//Laplace transform of f(t)=5cos(wt)+4sin(wt)
clc;
syms w t;
f=5*cos(w*t)+4*sin(w*t);
F=laplace(f);
disp(F);