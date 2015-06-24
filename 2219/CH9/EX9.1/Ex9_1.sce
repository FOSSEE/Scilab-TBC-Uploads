// Chapter 9 example 1
//------------------------------------------------------------------------------
clc;
clear;
// Given Data
PRF     = 1000;         // Pulse repetitive frequency in Hz
t       = 0.15*10^-3;   // Round propagation time in s
c       = 3*10^8;       // velocity of EM waves in m/s
// calculations
R       = (c*t)/2;      // Range
Runamb  = c/(2*PRF)     // Max unambiguous range

// Output
mprintf('Target Range = %3.1f Km\n Maximum Unambiguous range = %d Km',R/1000,Runamb/1000);
//------------------------------------------------------------------------------
