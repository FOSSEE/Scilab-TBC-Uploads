// Chapter 4 Example 13
//==============================================================================
clc;
clear;

// input data
l       = 0.1*10^-9;         // length of one dimensional box 
h       = 6.625*10^-34       // plancks constant in Jsec
m       = 9.11*10^-31        // mass of electron in Kg
n       = 1;                 // for ground state
e       = 1.6*10^-19         // charge of electron in columbs

// Calculations
E       = (h^2 * n^2)/(8*m*l^2 *e ) // Energy of electron in eV 
// Output
mprintf('Energy of an electron = %3.3f eV',E);
//==============================================================================


