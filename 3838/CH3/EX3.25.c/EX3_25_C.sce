//EXAMPLE 3.25.c
clc;
Syms s,t;
u=laplace(t,t,s)+laplace(sin(t),t,s);
F=u*laplace(1,t,s)
disp(F);
