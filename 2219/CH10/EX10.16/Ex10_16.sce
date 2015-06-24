// Chapter 10 example 16
//------------------------------------------------------------------------------
clc;
clear;
//Given data
R       = 6000;     // Target Range
c       = 3*10^8;   // speed of light in m/s

// Calculations
t       = (2*R)/c;  // round trip time

// Output
mprintf('Round Trip time = %d us',t/10^-6);
//------------------------------------------------------------------------------
