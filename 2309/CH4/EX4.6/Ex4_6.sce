// Chapter 4 Example 6
//==============================================================================
clc;
clear;

// input data
E       = 100                // Energy of electron in eV
h       = 6.625*10^-34       // plancks constant
m       = 9.11*10^-31        // mass of electron in Kg
e       = 1.6*10^-19         // Charge of electron in Columbs

// Calculations

E1      = E*e               // Energy conversion from eV to Joule
lamda   = h/(sqrt(2*m*E1))  // de Broglie wavelength

// Output
mprintf('The de-Broglie wavelength  = %3.3f Å',lamda*10^10);
//==============================================================================
