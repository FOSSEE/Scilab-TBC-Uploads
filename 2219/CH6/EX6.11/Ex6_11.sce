// Chapter 6 example 11
//------------------------------------------------------------------------------
clc;
clear;
// Given data
e       = 1.6*10^-19;   // charge of electron
Nd      = 10^15*10^6;   // mobility
L       = 10*10^-6;     // active layer of Barritt diode
er      = 12.5          // relative permitivity
eo      = 8.85*10^-12;  // permitivity in F/cm

// calculations
Ex      = (e*Nd*L)/(2*eo*er) // electric field for Va = Vpt and x = L/2
E       = Ex/10^2;           // electric field in v/cm
Vpt     = 10*10^-4*E

// Output
mprintf('Electric field E(x) = %3.0f KV/cm\n Punch through voltage = %3.0f Volts',E/1000,Vpt);
//------------------------------------------------------------------------------
