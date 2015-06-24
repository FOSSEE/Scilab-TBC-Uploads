//============================================================================
// chapter 10 example 1

clc;
clear;

// Variable declaration
 E2     = 5.56*10^-19;          // Higher Energy level in J
 E1     = 2.36*10^-19;          // Lower Energy level in J
 h      = 6.626*10^-34;         // plancks constant in J.s
 c      = 3*10^8;               // velocity of light in m

// Calculations
 dE    = E2 - E1;              // Energy difference in J
 lamda = (h*c)/dE;             // wavelength in m
 

// Result

mprintf('Wavelength of the photon = %d Å\n',lamda/10^-10);
mprintf(' The colour of the photon is red')
    
//==============================================================================    
