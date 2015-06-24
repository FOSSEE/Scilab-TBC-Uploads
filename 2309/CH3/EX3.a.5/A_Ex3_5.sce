// Chapter 3 Additional Example 5
//==============================================================================
clc;
clear;

//input data
NA      = 0.25;      // Numerical aperture 
d       = 6*10^-6   // core diameter
lamda   = 1.5*10^-6; // wavelength of laser source
n1      = 1.47;      // refractive index of core
n2      = 1.43       // refractive index of cladding

// calculations
NA      = sqrt( n1^2 - n2^2);       // Numerical Aperture
N       = 4.9*(d*NA/lamda)^2;       // no of modes for step index fibre

// Output
mprintf('No. of total modes propagating in the fibre = %d',N);
//==============================================================================
