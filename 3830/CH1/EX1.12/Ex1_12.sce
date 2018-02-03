// Exa 1.12

clc;
clear;

// Given

// Referring Fig. 1.49
Ifs = 10; // Full scale deflection current in Amp
Im = 0.015; // Meter resistance in Amp
R = 5; // Resistance in Ohms

// Solution

Isg = Ifs-Im;
Rsg = Im*R/Isg;

printf('The value of shunt resistance for the milli Ammeter = %.2f * 10^-3  Ohms \n',Rsg*1000);
