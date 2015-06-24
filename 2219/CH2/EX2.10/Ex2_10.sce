// chapter 2 example 10
//------------------------------------------------------------------------------
clc;
clear;
// given data
// D  = 3*10^-7 sin(6*10^7 - 0.35x)az
er = 100;       // relative permitivity

// Calculations
// ∂D/∂t =  3*10^-7 * 6*10^7* cos(6*10^7 - 0.35x)az
A =  3*10^-7 * 6*10^7

// output
mprintf('Amplitude of displacement current density = %d A/m^2',A);
//-----------------------------------------------------------------------------
