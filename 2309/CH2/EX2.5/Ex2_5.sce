// Chapter 2 Example 5
//==============================================================================
clc;
clear;

//input data
E           = 0.02;                 // ionisation energy in eV
h           = 6.625*10^-34;         // plank's constant
c           = 3*10^8;               // vel. of light in m/s
q           = 1.6*10^-19;           // charge of electron

//Calculations

lamda       = h*c/(E*q)             // long wavelength limit in m

//Output

mprintf('long wavelength limit = %3.3e m',lamda);

//==============================================================================

