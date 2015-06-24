// Exa 4.9
format('v',6)
clc;
clear;
close;
// Given data
epsilon = 16/(36 * %pi * 10^11);// in F/cm
A = 1 * 10^-2;
W = 2 * 10^-4;
// The barrier capacitance 
C_T = (epsilon * A)/W;// in F
C_T= C_T*10^12;// in pF
disp(C_T,"The barrier capacitance in pF is");
