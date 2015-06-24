// Chapter 6 example 16
//------------------------------------------------------------------------------
clc;
clear;
// Given data
h       = 6.63*10^-34;      // planck's constant in Joule-sec
el      = 0.25;             // lower energy level in eV from energy level diag.
eh      = 1.5;              // higher energy level in eV from energy level diag.
e       = 1.6*10^-19;      // charge of electron
c       = 3*10^8;          // vel. of light in m/s

// calculations
hf      = (eh - el)*e             // energy diff b/w two levels in J
f       = hf/h;                   // frequency
lamda   = c/f                     // o/p laser wavelength in m

// Output
mprintf('Output laser wavelength = %3.0e m or%3.0f µm ',lamda,lamda*10^6)
