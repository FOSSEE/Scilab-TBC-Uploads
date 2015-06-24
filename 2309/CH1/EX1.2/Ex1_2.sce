// Chapter 1 Example 2 
//==============================================================================
clc;
clear;

//input data

P           = 1;            // for fundamental mode
t           = 0.1*10^-2;    // thickness of piezo electric crystal
E           = 7.9*10^10     // young's modulus
p           = 2650          // density in kg/m^3

//Calculations

f           = (P/(2*t))*sqrt(E/p);      // frequency of the oscillator circuit

//Output
mprintf('The Frequency of the vibrating crystal = %3.3f MHz',f/10^6);

//==============================================================================
