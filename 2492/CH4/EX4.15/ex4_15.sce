//Exa 4.15
format('v',7)
clc;
clear;
close;
// Given data
bita = 100;
I_CBO = 4;// in µA
I_B = 40;// in µA
// The collector current,
I_C = (bita * I_B) + ((1+bita) * I_CBO);// in µA
I_C = I_C * 10^-3;// in msA
disp(I_C,"The collector current in mA is");
