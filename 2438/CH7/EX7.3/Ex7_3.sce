//============================================================================
// Chapter 7 example 3

clc;
clear;

// Variable declaration
Io  = 0.25*10^-6;       // large reverse biased current in A
V   = 0.12;             // applied voltage in V
Vt  = 0.026;            // Volt-equivalent of temperature in V

// Calculations
I   = Io*(exp(V/Vt)-1);     // current in A 

// Result
mprintf('Current flowing through germanium diode = %g uA',I*10^6);

//=============================================================================
