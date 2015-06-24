// find power dissipation
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 6-11, page 211

clear;clc; close;

// Given data
Vce=10;// collector-emmiter voltage in volts 
Ic=20*10^-3;// collector-current in amperes
T=25;// ambient temperature 
P=625*10^-3;// power rating in watts at 25 degree celcius

// Calculations
Pd=Vce*Ic;// power dissipation in watts
disp("watts",Pd,"dissipated power=")

// Result
// As power dissipation is less than rated power at ambient temperature,transistor(2N3904) is safe 
