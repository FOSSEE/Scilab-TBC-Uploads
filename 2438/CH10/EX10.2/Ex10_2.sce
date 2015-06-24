//===========================================================================================
// chapter 10 example 2
clc
clear

// Variable declaration

 h   = 6.63*10^-34;         // plancks constant in J.s
 c   = 3*10^8;               // velocity of light in m
 E   = 5.6;                  // bandgap in eV
 e   = 1.6*10^-19;           // charge of electron coulombs

// Calculations

 lamda    = (h*c)/(E*e)         // wavelength in m

// output

 mprintf('Maximum Wavelength for which diamond is opaque is Imax = %d Å',lamda/10^-10);
 mprintf('\n Note: Imax is wrongly printed as 220 Å in textbook');

//===============================================================================================
