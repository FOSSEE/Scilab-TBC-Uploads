// Chapter 4 Example 11
//==============================================================================
clc;
clear;

// input data
l       = 4*10^-9;           // width of infinitely deep potential
h       = 6.625*10^-34       // plancks constant in Jsec
m       = 9.11*10^-31        // mass of electron in Kg
n       = 1;                 // minimum energy
e       = 1.6*10^-19         // charge of electron in columbs

// Calculations
E       = (h^2 * n^2)/(8*m*l^2)    // Energy of electron in an infinitely deep potential well 
E1      = E/e                      // energy conversion from joules to eV

// Output
mprintf('Minimum energy of an electron = %3.4f eV',E1);
//==============================================================================
