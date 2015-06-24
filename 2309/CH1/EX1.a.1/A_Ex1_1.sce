// Chapter 1 addl_Example 1 
//==============================================================================
clc;
clear;

//input data

P           = 1;            // for fundamental mode
t           = 1.5*10^-3;    // thickness of quartz crystal
E           = 7.9*10^10     // young's modulus in N/m^2
p           = 2650          // density in kg/m^3

//Calculations

f           = (P/(2*t))*sqrt(E/p);      // frequency of the oscillator circuit

//Output
mprintf('The Fundamental Frequency of the Quartz crystal = %3.4f MHz',f/10^6);

//==============================================================================
