// Exa 6.4
format('v',6)
clc;
clear;
close;
// Given data
A= 1000;
dA= 100;
dAbyAf= 0.1/100;
// dAf/Af = 1/|1+B*A| * dA/A or
B= (dA-dAbyAf*A)/(dAbyAf*A^2)
disp(B,"The reverse transmission factor of the feedback networks used is : ");
Af = A/(1+(B*A));
disp(Af,"The gain with feed back is");
