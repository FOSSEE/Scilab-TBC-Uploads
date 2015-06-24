//=========================================================================
// chapter 10 example 4
clc;
clear;

// Variable declaration

 h   = 6.63*10^-34;          // plancks constant in J.s
 c   = 3*10^8;               // velocity of light in m
 lamda = 1.1*10^-6;          // wavelength in m
 e   = 1.6*10^-19;           // charge of electron in coulombs
 E2  = 0.4*10^-19;           // energy level in joules


// Calculations
 E3  = E2 + (h*c)/(lamda);          //energy in J

// Result
 mprintf('Energy of the metastable state E3 = %3.1e J',E3);

//=========================================================================
