//laplace of unit impulse 
clc;
syms s;
X=symsum(1*%e^(-s*t),t,0,0);