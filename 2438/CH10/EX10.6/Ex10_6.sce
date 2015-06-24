//=======================================================================
// chapter 10 example 6

clc
clear

// Variable declaration
n1  = 1.55;         // refractive index of core
n2  = 1.53;         // refractive index of cladding


// Calculations

NA  = sqrt(n1^2 - n2^2);


// Result
mprintf('Numerical aperture = %3.3f',NA);

//========================================================================
