// Chapter 6 example 17
//------------------------------------------------------------------------------
clc;
clear;
// Given data
p   = 0.1*10^-2;        // resistivity in ohm-m
t   = 100*10^-6;        // thickness in m
AR  = 10/1;             // aspect ratio

// Calculations
ps  = p/t
R   = ps*AR;            // Resistance in ohm

// Output
mprintf('Resistance = %d Ω',R);
//-----------------------------------------------------------------------------
