// Chapter 10 example 18
//------------------------------------------------------------------------------
clc;
clear;
//Given data
B       = 10^6;     // Bandwidth in Mhz
c       = 3*10^8;   // speed of light in m/s

// Calculations
RR      = c/(2*B);  // Range Resolution in m

// Output
mprintf('Range Resolution = %d m\n',RR);
//------------------------------------------------------------------------------
