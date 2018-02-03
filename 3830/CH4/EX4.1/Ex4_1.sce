// Exa 4.1

clc;
clear;

// Given

// An oscilloscope

R = 400; // Resistance(k Ohms)
C = 0.025; // capacitance(micro Farad)
T = 0.4; // Time period of saw-tooth output waveform(msec)

// Solution

printf('  The percentage of non linearity i.e deviation in output can be given as t/(4*R*C)\n  ');
PD = (T*10^-3)/(4*R*10^3*C*10^-6) ;

printf(' Therefore, by calculation, percent deviation = %d percent \n ',PD*100);
