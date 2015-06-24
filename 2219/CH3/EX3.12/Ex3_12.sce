// Chapter 3 example 12
//------------------------------------------------------------------------------
clc;
clear;
// Given data
a   = 4*10^-2;          // width of waveguide 
b   = 2*10^-2           // narrow dimension of waveguide
er  = 4;                // dielectric constant
c   = 3*10^8            // velocity in m/s

// Calculations
lamda_c     = 2*a;      // max cut-off wavelength
fcmin       = c/lamda_c // min freq
lamda_d     = lamda_c/sqrt(er);     // wavelength if we insert dielectric
fc          = c/lamda_d             // min frequency in presence of dielectric

// Output
mprintf('Minimum Frequency that can be passed with dielectric in waveguide is %3.1f Ghz',fc/10^9);
//-------------------------------------------------------------------------------

 
