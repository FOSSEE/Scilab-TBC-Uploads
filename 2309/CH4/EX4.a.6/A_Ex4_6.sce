// Chapter 4 Additional Example 6
//==============================================================================
clc;
clear;

// input data
h       = 6.625*10^-34       // plancks constant
m       = 1.678*10^-27       // mass of proton in Kg
e       = 1.6*10^-19         // charge of electron
Kb      = 1.38*10^-23;       // boltzmann constant
T       = 300                // Temperature in kelvin
// Calculations

lamda   = h/(sqrt(3*m*Kb*T))  // de Broglie wavelength

// Output
mprintf('The de-Broglie wavelength = %3.4f Å',lamda*10^10);
//==============================================================================
