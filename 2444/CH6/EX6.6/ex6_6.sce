// Exa 6.6
clc;
clear;
close;
format('v',7)
// Given data
A = 2500;// open loop gain
// Desensitivity of transfer gain
trnsfr_gain_densitivity = 40;// in dB
trnsfr_gain_densitivity = 10^(trnsfr_gain_densitivity/20);
Af = A/trnsfr_gain_densitivity;// unit less
disp(Af,"The gain with feed back is");
I = A/Af;// assumed
disp("The input for same output will become "+string(I)+" times the input without feedback.")
