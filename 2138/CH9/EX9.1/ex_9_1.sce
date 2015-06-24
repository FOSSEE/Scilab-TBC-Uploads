//Example 9.1 // current
clc;
clear;
close;
//given data :
n=20; // dry cells of emf
E=1.5; // emf in volts
R=5; // external resistance in ohm
r=0.5; // internal resistance in ohm
I=(n*E)/(R+(n*r));
disp(I,"current flowing,I(A) = ")
