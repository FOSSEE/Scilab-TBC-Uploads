// Chapter 6 example 20
//------------------------------------------------------------------------------
clc;
clear;
// Given data
ps      = 100;      // sheet resistivity
L       = 1.04      // length
W       = 0.02      // width

// Calculations
NOS     = L/W        // number of squares
R       = ps * NOS   // resistance

// Output
mprintf('Resistance = %3.1f KΩ',R/1000);
//------------------------------------------------------------------------------ 
