// Exa 5.16
clc;
clear;
close;
format('v',6)
// Given data
A = 60;// in dB
A =10^(A/20);
Beta = 0.005;
dAbyA = -12/100;//gain reduction in %
dAf_byAf = (1/(1+(A*Beta)))*dAbyA;// change in overall gain
dAf_byAf = dAf_byAf * 100;// in %
disp(dAf_byAf,"The change in overall gain in % is");
disp("Thus, the overall gain will be reduced by 2%")
