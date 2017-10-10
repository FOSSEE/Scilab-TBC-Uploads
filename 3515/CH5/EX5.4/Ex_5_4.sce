// Exa 5.4
format('v',6);
clc;
clear;
close;
// Given data
dAf_by_Af= 0.2/100;
dA_by_A= 150/2000;
A=2000;
// Formula dAf_by_Af = 1/(1+Bita*A) * dA_by_A
Bita= dA_by_A/(A*dAf_by_Af )-1/A;
Af= A/(1+Bita*A);
disp(Bita*100,"Value of Bita in percent is ")
disp(Af,"Value of Af is : ")
