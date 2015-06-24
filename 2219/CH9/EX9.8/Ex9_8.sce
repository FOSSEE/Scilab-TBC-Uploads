// Chapter 9 example 8
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
PW      = 10*10^-6;         // pulse width in sec
f       = 10*10^9;          // frequency in Hz
fm      = 1000;             // modulating frequency

// calculations
BW_M    = 1/PW              // matched bandwidth
cf1     = f+fm;             // closest freq.
cf2     = f-fm;             // closest freq.
fo      = f;                // centre freq.

// Output
mprintf('Centre of frequency spectrum = %d Khz\n The two closet frequencies to the center of the spectrum are %d Khz and %d Khz',fo/10^3,cf1/10^3,cf2/10^3);
//------------------------------------------------------------------------------
