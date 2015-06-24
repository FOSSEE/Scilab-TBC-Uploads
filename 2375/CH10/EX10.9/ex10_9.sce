// Exa 10.9
clc;
clear;
close;
format('v',6)
// Given data
Beta = 0.25;
A = 100;
dA= 10;// in %
// Af = A/(1+(A*Beta))          (i)
//dAf = dA/((1+(Beta*A))^2) (ii)
// From eq (i) and (ii)
dAbyA = dA/A;
disp(dAbyA,"The small change in gain is");
