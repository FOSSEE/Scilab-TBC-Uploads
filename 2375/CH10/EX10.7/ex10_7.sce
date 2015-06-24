// Exa 10.7
clc;
clear;
close;
format('v',6)
// Given data
dAbyA = 10/100;
A = 200;
Beta = 0.25;
// Af = A/(1+(A*Beta))      (i)
// differentiating w.r.to A we get, dAf = dA/((1+(Beta*A))^2)   (ii)
// From eq(i) and (ii)
dAfbyAf =  1/(1+A*Beta)*dAbyA
disp(dAfbyAf,"The small change in gain is");
