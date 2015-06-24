// Chapter 3 Example 3
//==============================================================================
clc;
clear;

//input data
NA      = 0.26;      // Numerical aperture 
n1      = 1.5 ;      // Refractive index of core
d       = 100*10^-6; // diameter of the core in m

// Calculations
n2      = sqrt( n1^2 - NA^2);       // Refractive index of cladding

// Output
mprintf('Refractive index of cladding = %3.4f',n2);
//==============================================================================
