//Example 9.3 // current
clc;
clear;
close;
//given data :
m=3; 
n=10; // dry cells of emf
E=1.5; // emf in volts
R=2.5; // resistance in ohm
r=0.5; // internal resistance in ohm
I=(m*n*E)/((m*R)+(n*r));
disp(I,"current flowing,I(A) = ")
