// Exa 6.1
clc;
clear;
close;
format('v',6)
// Given data
CMRR = 10^5;
Ad = 10^5;
// CMRR = Ad/A_CM;
// The common mode gain of the op-amp 
A_CM = Ad/CMRR;
disp(A_CM,"The common mode gain of the op-amp is");
