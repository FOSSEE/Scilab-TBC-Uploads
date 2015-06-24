// Chapter 9 example 11
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
f       = 10^9;         // Centre freq. of spectrum
t       = 13            // pulse width in us
N       = 13;           // N-bit Barker code

// Calculations
Sub_PW  = t/N;          // sub pulsewidth
match_BW= 1/Sub_PW;     // Matched bandwidth in Mhz

// Output
mprintf('Matched Bandwidth = %d Mhz\n Center Frequency of the spectrum = %d Ghz',match_BW,f/10^9 );
//-----------------------------------------------------------------------------
