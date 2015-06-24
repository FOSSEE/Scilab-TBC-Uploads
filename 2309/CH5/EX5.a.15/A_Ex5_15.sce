// Chapter 5 additional Example 15
//==============================================================================
clc;
clear;

//input data
r   = 1.246*10^-10;     // atomic radius in m
h1  = 1                 // miller indice
h2  = 2                 // miller indice
k0  = 0                 // miller indice
k1  = 1                 // miller indice
k2  = 2                 // miller indice
l0  = 0                 // miller indice
l1  = 1                 // miller indice

// Calculations
a    = (4*r)/sqrt(2);    // lattice constant
d111 = a/sqrt((h1^2)+(k1^2)+(l1^2)); // interplanar distance
d200 = a/sqrt((h2^2)+(k0^2)+(l0^2)); // interplanar distance
d220 = a/sqrt((h2^2)+(k2^2)+(l0^2)); // interplanar distance

// Output
mprintf('d111 = %3.3e m\n d200 = %3.4e m\n d220 = %3.3e m\n',d111,d200,d220');
//==============================================================================
