// Chapter 3 Additional Example 3
//==============================================================================
clc;
clear;

//input data
delta       = 0.015;        // relative refractive index
NA          = 0.27;         // Numerical aperture

// Calculations
//we know that NA = n1*sqrt(2*Δ)
n1          = NA/sqrt(2*delta)      // refractive index of core
n2          = sqrt( n1^2 - NA^2);   // Refractive index of cladding
// Output
mprintf('Refractive index of the core = %3.3f\n Refractive index of the cladding = %3.3f\n',n1,n2);
//==============================================================================
