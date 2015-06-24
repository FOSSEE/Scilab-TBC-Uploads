// Exa 4.9
clc;
clear;
close;
format('v',8)
// Given data
delV_BE = 250;// in mV
delV_BE = delV_BE * 10^-3;// in V
delI_B = 1;// in mA
delI_B = delI_B * 10^-3;// in A
r_in = delV_BE/delI_B;// in ohm
disp(r_in,"The dynamic input resistance in ohm is");
