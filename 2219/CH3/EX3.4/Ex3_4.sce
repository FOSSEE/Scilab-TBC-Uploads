// Chapter 3 example 4
//------------------------------------------------------------------------------
clc;
clear;
// Given data
RmsVmax    = 100;      // max value of RMS vtg
RmsVmin    = 25;       // min value of RMS vtg
Zl         = 300;      // load impedance in ohm

// Calculations
VSWR       = RmsVmax/RmsVmin;   
// wkt VSWR  = Zl/Zo; assuming Zl > Zo
Zo         = Zl/VSWR;   // charecteristic impedance in ohm
p          = (Zl - Zo)/(Zl + Zo);   // reflection co-efficient

// Output
mprintf('Reflection Co-efficient = %3.1f\n Charecteristic impedance = %d ohm',p,Zo);
//------------------------------------------------------------------------------
