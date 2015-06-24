//====================================================================
// Chapter 8 example 18

clc;
clear;

// Variable declaration
h   = 6.62*10^-34       // plancks constant J.s
c   = 3*10^8;           // velocity of light in m
lamda = 1771*10^-9;     // wavelengthg in m
e   = 1.6*10^-19        // charge of electron in coulombs

// Calculations
Eg  = (h*c)/(lamda*e);      // bandgap energy eV

// Result
mprintf('bandgap energy = %3.3f eV',Eg);

//====================================================================
