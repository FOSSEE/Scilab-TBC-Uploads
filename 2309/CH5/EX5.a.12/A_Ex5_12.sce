// Chapter 5 additional Example 12
//==============================================================================
clc;
clear;

//input data

h       = 1;            // miller indice
k       = 1;            // miller indice
l       = 0;            // miller indice
d       = 2.86*10^-10   // interplanar distance in m

// Calculations
a       = d*sqrt((h^2)+(k^2)+(l^2)); // interplanar distance

// Output
mprintf('Lattice constant a = %3.3e m',a);
//==============================================================================
 
