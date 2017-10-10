//EXAMPLE 3.25.b
clc;
Syms s,t;
u=laplace((t)^(2),t,s)+laplace(t*exp(-4*t),t,s);
F=u*laplace(1,t,s)
disp(F);
