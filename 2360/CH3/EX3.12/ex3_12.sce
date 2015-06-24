// Exa 3.12
format('v',7);clc;clear;close;
// Given data
Im = 50;//current in µA
Im = Im * 10^-6;// in A
S = 1/Im;// in ohm/V
V = 500;// in V
Rm = 200;//internal resistance in ohm
Rs = (S*V) - Rm;//multiplier resistance in ohm
Rs = Rs * 10^-6;// in Mohm
disp(Rs,"The value of multiplier resistance in MΩ is");
