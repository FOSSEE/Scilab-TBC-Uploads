// Chapter 6 example 8
//------------------------------------------------------------------------------
clc;
clear;
// Given data
n       = 10^15;        // doping concentration in /cm^3
u       = 8500;         // mobility in  m^2/V-s
er      = 13;           // relative permitivity
eo      = 8.85*10^-14;  // permitivity in F/cm
e       = 1.6*10^-19;   // charge of electron

// Calculations
Td      = (eo*er)/(n*u*e)      // Dielectric relaxation time

// Output
mprintf('Dielectric relaxation time = %3.3f ps',Td*10^12);
//------------------------------------------------------------------------------
