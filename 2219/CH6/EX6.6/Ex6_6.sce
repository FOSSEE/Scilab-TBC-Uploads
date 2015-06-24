// Chapter 6 example 5
//------------------------------------------------------------------------------
clc;
clear;
// Given data
f       = 10*10^9;      // oscillating freq. of Gunn diode
Vs      = 10^5;         // saturation carrier velocity in m/s
er      = 13;           // relative permitivity
u       = 100*10^-4;    // mobility in m^2/V-s
eo      = 8.85*10^-12;  // permitivity in F/m
e       = 1.6*10^-19;   // charge of electron

// Calculations
L       = Vs/f;         // length of active layer
no      = (eo*er*Vs)/(L*e*u);   // doping concentration

// Output
mprintf('Doping Concentration no >> %3.2g /m^3',no);
//------------------------------------------------------------------------------
