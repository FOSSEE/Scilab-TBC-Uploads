// Chapter 4 Additional Example 7
//==============================================================================
clc;
clear;
// input data
h       = 6.625*10^-34       // plancks constant
m       = 9.11*10^-31        // mass of electron in Kg
lamda   = 3*10^-2;             // wavelength of electron wave
e       = 1.6*10^-19;          // charge of electron
// Calculations

E       = (h^2)/(2*m*lamda^2);  // Energy in Joules
E1      = E/e;
// Output
mprintf('Energy of the electron E = %3.4e eV\n',E1);
mprintf(' Note: Calculation mistake in textbook')
//==============================================================================
