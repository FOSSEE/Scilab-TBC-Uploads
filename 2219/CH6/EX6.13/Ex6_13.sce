// Chapter 6 example 13
//------------------------------------------------------------------------------
clc;
clear;
// Given data
n       = 10^15;        // doping concentration in /cm^3
er      = 15;           // relative permitivity
eo      = 8.85*10^-14;  // permitivity in F/cm
e       = 1.6*10^-19;   // charge of electron
sigma   = 133*10^-2;    // conductivity in ohm/cm

// calculations
Td      = (eo*er)/sigma    // dielectric relaxation time constant
u       = sigma/(n*e)      // mobility

// Output
mprintf('Dielectric relaxation time constant = %3.0f ps\n Carrier Mobility = %d cm^2/V-s\n',Td*10^12,u );
//------------------------------------------------------------------------------
