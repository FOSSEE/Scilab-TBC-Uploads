// Exa 6.11
clc;
clear;
close;
format('v',4)
// Given data
A = 1000;// unit less
Beta = 0.002;// unit less
Af = A/(1+(A*Beta));// unit less
// When open-loop gain is reduced by 
A_desh = (1-15/100)*A;// unit less
A_desh_f = A_desh/(1+(A_desh*Beta));// unit less
P = ((Af-A_desh_f)/Af)*100;// percentage change in overall gain in % 
disp(P,"The change in overall gain in % is");
