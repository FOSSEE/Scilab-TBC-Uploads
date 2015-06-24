// Chapter 4 Example 7
//==============================================================================
clc;
clear;

// input data
m       = 1.675*10^-27;     // Mass of proton in kg
c       = 3*10^8;           // velocity of light in m/s
h       = 6.625*10^-34      // plancks constant

// Calculations

vp      = c/20;             // velocity of proton in m/s
lamda   = h/(m*vp)          // de-Broglie wavelength in m

// Output
mprintf('de-Broglie wavelength = %e m',lamda);
//==============================================================================
