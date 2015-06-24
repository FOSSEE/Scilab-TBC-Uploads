// Chapter 5 Example 11
//==============================================================================
clc;
clear;

//input data
// (321) plane in simple cubic lattice
h       = 3;            // miller indice
k       = 2;            // miller indice
l       = 1;            // miller indice
a       = 4.12          // inter atomic space Å

// Calculations
dhkl    = a/sqrt((h^2)+(k^2)+(l^2)); // interplanar distance

// Output
mprintf('d = %3.2f Å',dhkl);
//==============================================================================
 
