// Chapter 4 Addutional Example 1
//==============================================================================
clc;
clear;

// input data
h       = 6.625*10^-34      // plancks constant
c       = 3*10^8;           // vel. of light
lamda   = 5893*10^-10;      // wavelength in m
P       = 100               // power of sodium vapour lamp

// Calculations
E       = (h*c)/lamda;      // Energy in joules
N       =  P/E              // Number of photons emitted

// Output
mprintf('Number of Photons emitted = %3.4e per second',N);
//==============================================================================

