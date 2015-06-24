// Chapter 4 Example 5
//==============================================================================
clc;
clear;

// input data
h       = 6.625*10^-34       // plancks constant
m       = 9.11*10^-31        // mass of electron in Kg
e       = 1.6*10^-19         // charge of electron
V       = 5000;               // potential in volts

// Calculations

lamda   = h/(sqrt(2*m*e*V))  // de Broglie wavelength

// Output
mprintf('The de-Broglie wavelength of electron = %3.5f Å',lamda*10^10);
//==============================================================================
