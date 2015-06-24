// Chapter 11 example 3
//------------------------------------------------------------------------------
clc;
clear;

// Given data
a1      = 18000;            // semi major axis of the elliptical orbits of satellite 1
a2      = 24000;            // semi major axis of the elliptical orbits of satellite 2

// Calculations
// T    = 2*%pi*sqrt(a^3/u);
//let K = T2/T1;
K       = (a2/a1)^(3/2);    // Ratio of orbital periods

// Output
mprintf('The orbital period of satellite-2 is %3.2f times the orbital period of satellite-1',K);
//------------------------------------------------------------------------------
