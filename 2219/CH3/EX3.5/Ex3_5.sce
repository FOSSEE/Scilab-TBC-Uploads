// Chapter 3 example 5
//------------------------------------------------------------------------------
clc;
clear;
// Given data
Zo      = 75;       // charecteristic impedance in ohm
Vref    = 100;      // reflected voltage
Pref    = 100;      // reflected power in watts

// Calculations
Zl      = (Vref)^2 /Pref         // load impedance
p       = (Zl - Zo)/(Zl + Zo);   // reflection co-efficient
Pinc    = Pref/p                 // incident power
Pobs    = Pinc - Pref            // power obsorbed

// Output
mprintf('Load Resistance = %d ohm\n Reflection Co-efficient = %3.3f\n incident power = %d watts\n power obsorbed = %d watts',Zl,p,Pinc,Pobs);
//------------------------------------------------------------------------------
