// Exa 1.18

clc;
clear;

// Given

Ifs = 10^-3; // Full scale deflection current in Amp
Rm = 500; // Meter resistance in Ohms
Range = 10; // Em = 10*Vrms 
// Solution

Sdc = 1/Ifs; // Dc Sensitivity in Ohms/Volt 
Sac = 0.9*Sdc; // Ac Sensitivity in Ohms/Volt

Rs = Sac * Range - Rm; 
printf('The value of multiplier resistance Rs = %d Ohms \n',Rs);
