// Chapter 5 additional Example 11
//==============================================================================
clc;
clear;

//input data
// (311) plane in simple cubic lattice
h       = 3;            // miller indice
k       = 1;            // miller indice
l       = 1;            // miller indice
a       = 2.109*10^-10  // lattice constant in m

// Calculations
dhkl    = a/sqrt((h^2)+(k^2)+(l^2)); // interplanar distance

// Output
mprintf('d = %3.3e m',dhkl);
//==============================================================================
 
