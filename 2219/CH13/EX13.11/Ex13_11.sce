//Chapter 13 example 11
//------------------------------------------------------------------------------
clc;
clear;
// Given data
DFM1    = 50;       // dispersive fade margin
FFM     = 30;       // flat fade margin
DFM2    = 40;       // dispersive fade margin

// Calculations
CFM1    = -10*log10(10^(-FFM/10) + 10^(-DFM1/10));
CFM2    = -10*log10(10^(-FFM/10) + 10^(-DFM2/10));
d_CFM   = CFM1 -CFM2;

// Output
mprintf('CFM increases by %3.2f dB for a 10 dB increase in DFM',d_CFM);
//------------------------------------------------------------------------------
