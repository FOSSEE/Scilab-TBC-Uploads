// chapter 7 example 4
//-----------------------------------------------------------------------------
clc;
clear;
// given data
n_az      = 0.5;        //length efficiency in azimuth direction
n_el      = 0.7;        //length efficiency in elevation direction
A         = 10;         // area in square mts

// Calculations
n         = n_az * n_el;    // aperture efficiency
Ae        = n*A;            // Effective aperture

// Output
mprintf('Effective aperture of the antenna = %3.1f sq.m',Ae);
//------------------------------------------------------------------------------
