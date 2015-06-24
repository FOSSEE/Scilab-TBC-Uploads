//Chapter 13 example 12
//------------------------------------------------------------------------------
clc;
clear;
// Given data
f       = 23;               // operating freq. of microwave link in Ghz
D       = 10;               // single hop path length in miles
a       = 1;                // topographic factor
b       = 0.5;              // climatic factor
DFM     = 40;               // dispersive fade margin
FFM     = 30;               // flat fade margin

// Calculations
CFM     = -10*log10(10^(-FFM/10) + 10^(-DFM/10));  // composite fade margin
U       = a*b*2.5*10^-6 *f*D^3 *10^(-CFM/10);     // unavailability factor 
U1      = U*525600;                               // outrage time in min per year

// Output
mprintf('Outrage time = %3.2f minutes per year',U1);
//------------------------------------------------------------------------------
