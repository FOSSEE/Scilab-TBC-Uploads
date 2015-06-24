// Exa 5.8
clc;
clear;
close;
// Given data
i_c = 15;// in mA
i_c = i_c * 10^-3;// in A
i_b = 100;// in µA
i_b = i_b * 10^-6;// in A
bita = i_c/i_b;
disp(bita,"The value of ac bita is");
