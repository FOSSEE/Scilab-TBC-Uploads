//Chapter 13 example 10
//------------------------------------------------------------------------------
clc;
clear;
// Given data
DFM     = 40;       // dispersive fade margin
FFM     = 30;       // flat fade margin

// Calculations
CFM     = -10*log10(10^(-FFM/10) + 10^(-DFM/10));

// Output
mprintf('Composite Fade Margin = %3.2f dB\n',CFM);
mprintf(' minus sign is wrongly printed in Textbook');
//------------------------------------------------------------------------------
