//example 3.7.a
clc;
Syms s t
F=(t^(2)-2*t)*unit_step(t-1)
laplace(F,t,s)
