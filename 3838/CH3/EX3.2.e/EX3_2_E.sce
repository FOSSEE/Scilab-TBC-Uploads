//EXAMPLE 3.2.E
clc;
Syms s t
w=2;
a=5;
F=exp(-a*t)*cos(w*t)
laplace(F,t,s)
