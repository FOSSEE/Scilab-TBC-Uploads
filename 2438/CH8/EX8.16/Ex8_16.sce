//==================================================================================
// Chapter 8 example 16

clc;
clear;

// Variable declaration
e   = 1.6*10^-19       // charge of electron in coulombs
Eg  = 0.75;             // bandgap energy eV
c   = 3*10^8;           // velocity of light in m
h   = 6.62*10^-34       // plancks constant in J.s

// Calculations
lamda   = (h*c)/(Eg*e)     // wavelength in Å

// Result
mprintf('Wavelength at which Ge starts to absorb light = %d Å',lamda*10^10);

//===================================================================================
