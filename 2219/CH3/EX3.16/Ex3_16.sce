// Chapter 3 example 16
//------------------------------------------------------------------------------
clc;
clear;
// Given data
a   = 7.2       ;    // width of waveguide in cm
b   = 3.4;          // narrow dimension of waveguide in cm
c   = 3*10^10;       // free space velocity of EM wave in cm/s
f   = 2.4*10^9;     // frequency in Hz

// Calculation
lamda   = c/f       // free space wavelength in cm
lamda_c = 2*a       // cutoff wavelength in cm
lamda_g = lamda/sqrt(1 - (lamda/lamda_c)^2); // guide wavelength in cm
vp      = (lamda_g * c)/lamda                // phase velocity in cm/s
vg      = c^2/vp;                            // group velocity in cm/s

// Output
mprintf('Group velocity = %3.1e cm/s\n Phase Velocity = %3.1e cm/s',vg,vp);
//------------------------------------------------------------------------------
