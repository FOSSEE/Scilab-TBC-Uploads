// Chapter 5 Example 17
//==============================================================================
clc;
clear;

//input data
// (101),(221) planes in simple cubic lattice
h1       = 1;            // miller indice
k0       = 0;            // miller indice
l1       = 1;            // miller indice
h2       = 2;            // miller indice
k2       = 2;            // miller indice
l1       = 1;            // miller indice
a        = 4.2          // inter atomic space Å

// Calculations
d101    = a/sqrt((h1^2)+(k0^2)+(l1^2)); // interplanar distance
d221    = a/sqrt((h2^2)+(k2^2)+(l1^2)); // interplanar distance


// Output
mprintf('d(101) = %3.4f Å\n d(221) = %3.1f Å ',d101,d221);
//=============================================================================
 
