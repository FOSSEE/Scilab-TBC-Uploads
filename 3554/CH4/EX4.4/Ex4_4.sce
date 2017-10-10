// Exa 4.4

clc;
clear all;

// Given data

Iful= 200; // Full scale deflection current in micro Amperes
Rm= 100;// Internal resistance of the movement in Ohms
Range= 50; // Voltage range

// Solution

S= 1/(Iful * 10^-6); // Sensitivity of voltmeter is ohms/volt
// Rs=S*Range-Rm ;
Rs=S*Range-Rm; // Multiplier resistance

printf(' The value of multiplier resistance = %.1f K Ohms \n', Rs/1000);
