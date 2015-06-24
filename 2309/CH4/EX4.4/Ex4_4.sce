// Chapter 4 Example 4
//==============================================================================
clc;
clear;

// input data
h       = 6.625*10^-34       // plancks constant
m       = 9.11*10^-31        // mass of electron in Kg
e       = 1.6*10^-19         // charge of electron
V       = 150;               // potential difference in volts

// Calculations

lamda   = h/(sqrt(2*m*e*V))  // de Broglie wavelength

// Output
mprintf('The de-Broglie wavelength = %d Å',lamda*10^10);
//==============================================================================
