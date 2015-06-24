// Exa 6.3
clc;
clear;
close;
format('v',6)
// Given data
A = 75;// internal gain
Beta = 1/15;//feedback fraction
Af = A/(1+(Beta*A));// voltage gain with negative feedback
disp(Af,"The voltage gain with negative feedback is");
A_desh = 2*A;// unit less
A_desh_f = A_desh/(1+(Beta*A_desh));// unit less
disp(A_desh_f,"The new value of gain is");
