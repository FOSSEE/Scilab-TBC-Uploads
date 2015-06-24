// Exa 4.11
clc;
clear;
close;
// Given data
epsilon = 16/(36 * %pi * 10^11);// in F/cm
A = 1 * 10^-2;
W = 2 * 10^-4;
C_T = (epsilon * A)/W;// in F
disp(C_T*10^12,"The barrier capacitance in pF is");
