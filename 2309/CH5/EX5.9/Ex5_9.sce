// Chapter 5 Example 9
//==============================================================================
clc;
clear;

//input data
// (100) planes in rock crystal
h       = 1;            // miller indice
k       = 0;            // miller indice
l       = 0;            // miller indice
a       = 2.814         // lattice constant in Å

// Calculations
dhkl    = a/sqrt((h^2)+(k^2)+(l^2)); // interplanar distance

// Output
mprintf('d-spacing for (100) plane in rock salt = %3.3f Å',dhkl);
//==============================================================================
 
