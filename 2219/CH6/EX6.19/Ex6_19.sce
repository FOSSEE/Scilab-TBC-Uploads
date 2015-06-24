// Chapter 6 example 19
//------------------------------------------------------------------------------
clc;
clear;
// Given data
A       = 100*100*10^-12;       // Area of electrode
er      = 9.6;                  // relative permitivity
t       = 500*10^-6;            // substrate thickness
eo      = 8.85*10^-12;          // permitivity
// Calculations
C       = (eo*er*A)/t;            // capacitance in farad

// Output
mprintf('Capacitance = %3.2e pF',C*10^12);
//------------------------------------------------------------------------------
