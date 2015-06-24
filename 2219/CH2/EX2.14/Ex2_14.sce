// chapter 2 example 14
//------------------------------------------------------------------------------
clc;
clear;
// given data
f       = 1000;     // frequency in Hz
sigma   = 5*10^7;   // conductivity in mho/m
er      = 1;        // relative permitivity 
eo      = 8.85*10^-12;  // permitivity
//J     = 10^8sin(wt-444z)ax A/m^2

// Calculations
w       = 2*%pi*f
// J  = σE
// E  = 10^8sin(wt-444z)ax/sigma
// E  = 0.2sin(6280t-444z)ax
// D  = eoerE
// D  = 8.85*10^-12*0.2sin(6280t-444z)ax
// ∂D/∂t = 1.77*10^-12*6280cos(6280t - 444z)ax
A     =  1.77*10^-12*6280
mprintf('Amplitude of displacement current density = %3.2e A/m^2',A);
mprintf('\n Note: calculation mistake in textbook');
//------------------------------------------------------------------------------
