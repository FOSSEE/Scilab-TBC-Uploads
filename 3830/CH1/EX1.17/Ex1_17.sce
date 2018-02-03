// Exa 1.17

clc;
clear;

// Given

// Refer Fig. 1.77
Ifs = 10^-6; // Full scale deflection current in Amp
Rm = 300; // Meter resistance in Ohms
Erms = 10; // in Volts
Idc = 1*10^-3; // in Amp
// Solution
S = 1/Ifs;
Rs = 0.45* Erms/Idc - Rm;
printf(' The value of multiplier resistance Rs = %.1f k Ohms \n',Rs/1000);
