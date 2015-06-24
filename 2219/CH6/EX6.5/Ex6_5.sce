// Chapter 6 example 5
//------------------------------------------------------------------------------
clc;
clear;
// Given data
f       = 10*10^9;      // oscillating freq. of Gunn diode
Vs      = 10^5;         // saturation carrier velocity in m/s

// calculations
L       = Vs/f;         // length of active layer

// Output
mprintf('Length of active layer = %3.0f µm',L/10^-6 );
//------------------------------------------------------------------------------
