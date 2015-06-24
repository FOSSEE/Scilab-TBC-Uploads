// Chapter 6 example 9
//------------------------------------------------------------------------------
clc;
clear;
// Given data
f       = 20*10^9;      // oscillating freq. of Gunn device
Vs      = 10^5;         // saturation carrier velocity in m/s

// Calculations
L       = Vs/f          // length of device

// output
mprintf('length of device = %d µm',L*10^6);
//-------------------------------------------------------------------------------
