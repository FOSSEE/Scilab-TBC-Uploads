// Chapter 5 Example 5
//==============================================================================
clc;
clear;

//input data
h1       = 1;            // miller indice
k1       = 1;            // miller indice
l1       = 1;            // miller indice
h0       = 0;            // miller indice
k0       = 0;            // miller indice
l0       = 0;            // miller indice

// calculations
// dhkl    = a/sqrt((h^2)+(k^2)+(l^2)); // interplanar distance
// assume a = 1(constant) for easier calculation in scilab

a        = 1;
d100     = a/sqrt((h1^2)+(k0^2)+(l0^2)); // interplanar distance
d110     = a/sqrt((h1^2)+(k1^2)+(l0^2)); // interplanar distance
d111     = a/sqrt((h1^2)+(k1^2)+(l1^2)); // interplanar distance

// Output
mprintf('d100 : d110 : d111 = %d : %3.2f : %3.2f',d100,d110,d111);

//==============================================================================


