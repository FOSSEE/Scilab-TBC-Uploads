//example 3.7.b
clc;
Syms s t
a=5;
F=(t-a)*unit_step(t-a)
laplace(F,t,s)
