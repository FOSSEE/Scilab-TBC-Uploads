// Chapter 3 example 14
//------------------------------------------------------------------------------
clc;
clear;
// Given data
a   = 30;            // width of waveguide
b   = 20;           // narrow dimension of waveguide
c   = 3*10^8;       // velocity of EM wave in m/s
m   = 1;            // for TE10
n   = 0;            // for TE10

// Calculations
// lamda0   = 2/sqrt((m/a)^2 + (n/b)^2)
lamda0      = (2*a)/m;      // longest cut-off wavelength in dominant mode TE10

// Output
mprintf('longest cut-off wavelength = %d mm',lamda0 );
//-------------------------------------------------------------------------------
