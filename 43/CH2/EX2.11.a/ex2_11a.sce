//Fourier Transform of unit impulse 
clc;
syms s t
X=symsum(1*%e^(-s*t),t,0,0);