// Chapter 6 example 4
//------------------------------------------------------------------------------
clc;
clear;
// Given data
L       = 10^-6;        // gate length
Vs      = 10^5;         // saturation velocity in m/s

// calculations
fT      = Vs/(2*%pi*L); // cut-off freq.

// Output
mprintf('Unity gain cut-off frequency = %3.0f Ghz',fT/10^9);
//------------------------------------------------------------------------------
