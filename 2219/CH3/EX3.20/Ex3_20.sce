// Chapter 3 example 20
//------------------------------------------------------------------------------
clc;
clear;
// Given data
a   = 4*10^-2;      // width of waveguide
b   = 2*10^-2;      // narrow dimension of waveguide
c   = 3*10^8;       // velocity of EM wave in m/s
d   = 4*10^-2;      // distance b/w field maxima and minima
// Calculations
lamda_c     = 2*a;      // cut-off wavelength in dominant mode
lamda_g     = 4*d;      // guide wavelength
// lamda_g  = lamda0/(sqrt(1 - (lamda0/lamda_c)^2))
lamda0      = sqrt((lamda_c * lamda_g)^2 / (lamda_c^2 + lamda_g^2));
f0          = c/lamda0;     // frequency of the wave

// Output
mprintf('Frequency of the wave = %3.3f Ghz',f0/10^9);
//------------------------------------------------------------------------------
