// Chapter 3 Additional Example 4 
//==============================================================================
clc;
clear;

//input data
NA      = 0.25;      // Numerical aperture 
d       = 60*10^-6   // core diameter
lamda   = 2.7*10^-6; // wavelength in m

// calculations
N       = 4.9*(d*NA/lamda)^2;       // no of modes for step index fibre

// Output
mprintf('No. of total modes propagating in a multimode step index fibre = %d',N);
//==============================================================================
