// Exa 5.14
clc;
clear;
close;
format('v',6)
// Given data
A = 125;
Beta = 1/10;
// Gain of negative feedback
Af = A/(1+(A*Beta));
disp(Af,"The gain of negative feedback is");
