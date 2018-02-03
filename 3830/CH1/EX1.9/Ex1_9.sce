// Exa 1.9

clc;
clear;

// Given

// Referring Fig.1.26
Ifs = 50*10^-6; // Full scale deflection current in Amp
Rm = 11; // Meter resistance in Ohms
R1 = 3; // Range in Volts
R2 = 10; // range in Volts
R3 = 30; // Range in Volts

// Solution

S = 1/Ifs; // Sensitivity in Ohms/V

printf('The values of multiplier resistances in the different ranges are :- \n');
printf(' For 3-V range :');
Rs1 = S*R1-Rm;
printf('%d k Ohms \n',Rs1/1000);
printf(' For 10-V range :');
Rs2 = S*R2-Rm;
printf('%d k Ohms \n',Rs2/1000);
printf(' For 30-V range :');
Rs3 = S*R3-Rm;
printf('%d k Ohms \n',Rs3/1000);

//The answer provided in the textbook is wrong for Rs1
