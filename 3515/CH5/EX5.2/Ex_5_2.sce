// Exa 5.2
format('v',7);
clc;
clear;
close;
// Given data
Af= 100;// unit less
Vi= 50;// in mV
Vi= Vi*10^-3;// in V
Vs= 0.5;// in V
// Formula Af= Vo/Vs
Vo= Af*Vs;// in V
A= Vo/Vi;
disp(A,"Value of A is : ")
// Formula Af= A/(1+B*A)
B= 1/Af-1/A;
B=B*100;// in %
disp(B,"Value of B is in percent : ")
