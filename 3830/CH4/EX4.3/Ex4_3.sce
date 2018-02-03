// Exa 4.3

clc;
clear;

// Given 

Va = 2500; // Applied voltage(Volts)
e = 1.602*10^-19; // Charge of electron(C)
m = 9.107*10^-31; // Mass of electron(Kg)

// Solution

// For Electron beam in the oscilloscope, its velocity is given as-
V = sqrt(2*e*Va/m);

printf(' The velocity of electron beam of an oscilloscope = %.3f * 10^6 m/sec \n',V/10^6);
