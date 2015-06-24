// Exa 8.9
clc;
clear;
close;
// Given data
C = 0.82;// in kg
H2 = .12;// in kg
O2 = 0.02;// in kg
a = C/12;
b = H2/2;
y = (32*(a+(0.5*b))-O2)/0.23;
disp(y,"Minimum quantity of air in kg is");
