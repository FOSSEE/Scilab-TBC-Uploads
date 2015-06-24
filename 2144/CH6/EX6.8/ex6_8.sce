// Exa 6.8
clc;
clear;
close;
// Given data
x = 0.88;// dryness fraction
h_fg = 2392.7;// in kJ/kg
H_wet = x * h_fg;// in kJ/kg
Vs = 14.67;// Specific volume in m^3/kg
V_wet = x * Vs;// in m^3/kg
Q = H_wet/V_wet;// in kJ/m^3
disp(Q,"Heat to be extracted in kJ/m^3 is");

 
