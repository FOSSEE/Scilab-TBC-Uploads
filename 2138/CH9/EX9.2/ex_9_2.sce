//Example 9.2 // current
clc;
clear;
close;
//given data :
n=10; // dry cells of emf
E=1.5; // emf in volts
R=4.9; // resistance in ohm
r=1; // internal resistance in ohm
I=(n*E)/((n*R)+(r));
disp(I,"current flowing,I(A) = ")
