// Exa 4.2

clc;
clear all;

// Given data

Iful= 50; // Fullscale deflection current in micro Amperes
Rm= 500; // Internal resistance in Ohms
V= 10; // Full range voltage of instrument(Volts)

// Solution

Rs= V/(Iful *10^-6)-Rm; // Multiplier resistance 

printf('The value of multiplier resistance = %.1f k Ohms\n',Rs/1000);
