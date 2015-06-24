// Chapter 3 example 11
//------------------------------------------------------------------------------
clc;
clear;
// Given data
a   = 1.5*10^-2;        // width of waveguide 
b   = 1*10^-2           // narrow dimension of waveguide
er  = 4;                // dielectric constant
f   = 8*10^9;           // frequency in Hz
c   = 3*10^8            // velocity in m/s

// calculations
lamda_c     = 2*a;      // cut-off wavelength for TE10 mode
lamda       = c/f       // wavelength corresponding to given freq.
lamda_d     = lamda/sqrt(er);   // wavelength when waveguide filled with dielectric
if lamda_d < lamda_c then
    mprintf('8 Ghz frequency will pass through the guide');
end
