// Chapter 6 example 3
//------------------------------------------------------------------------------
clc;
clear;
// Given data
L       = 10*10^-6;     // width of N-region
Vs      = 10^5;         // saturated vel. of carriers

// Calculations
fo      = (3*Vs)/(4*L);     // oscillation frequency

// output
mprintf('Operational frequency = %3.1f Ghz\n',fo/10^9);
mprintf(' Note: In textbook it is wrongly printed as 6.5 Ghz')
//------------------------------------------------------------------------------
