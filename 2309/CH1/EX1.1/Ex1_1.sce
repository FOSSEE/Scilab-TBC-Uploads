// Chapter 1 Example 1 
//==============================================================================
clc;
clear;

//input data

P           = 1;            // for fundamental mode
t           = 0.1*10^-2;    // thickness of piezo electric crystal
E           = 80*10^9       // young's modulus
p           = 2654          // density in kg/m^3

//Calculations

f           = (P/(2*t))*sqrt(E/p);      // frequency of the oscillator circuit

//Output
mprintf('The Frequency of the oscillator circuit = %e Hz',f);

//==============================================================================
