// Chapter 2 Example 6
//==============================================================================
clc;
clear;

//input data
E           = 1.44;                 // Bandgap energy in eV
h           = 6.625*10^-34;         // plank's constant
c           = 3*10^8;               // vel. of light in m/s
q           = 1.6*10^-19;           // charge of electron

//Calculations

lamda       = h*c/(E*q)             // Wavelength of GaAs laser

//Output

mprintf('Wavelength of GaAs laser = %3.1f Å',lamda*10^10);

//==============================================================================

