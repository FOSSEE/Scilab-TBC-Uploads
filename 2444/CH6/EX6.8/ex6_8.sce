// Exa 6.8
clc;
clear;
close;
format('v',6)
// Given data
A = 600;// unit less
Af = 50;// unit less
// Af = A/(1+(A*Beta));
Beta = ((A/Af)-1)/A;// unit less
//P = Vf/Vout = Beta*100;
P = Beta*100;// percentage of output voltage in % 
disp(P,"The percentage of output voltage in % is");
