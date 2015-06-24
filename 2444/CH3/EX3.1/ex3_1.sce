// Exa 3.1
clc;
clear;
close;
format('v',7)
// Given data
x = 1000;// in AT/m assumed
y = 0.2;// in T assumed
a = 9.3;// area in cm^2 
// Hysteresis loss/m^3/cycle
H = a*x*y;// in J/m^3/cycle
disp(H,"Hysteresis loss per cubic meter per cycle in J/m^3/cycle is");
f = 50;// in Hz
// Hystersis loss per cubic meter at a frequency of 50Hz 
h = H*f;// in W
h = h * 10^-3;// in kW
disp(h,"Hystersis loss per cubic meter at a frequency of 50Hz in kW is");
