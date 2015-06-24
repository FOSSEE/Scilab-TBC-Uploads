// Chapter 4 Example 14
//==============================================================================
clc;
clear;

// input data
l       = 0.5*10^-9;         // width of one dimensional box in m 
h       = 6.625*10^-34       // plancks constant in Jsec
m       = 9.11*10^-31        // mass of electron in Kg
n       = 1;                 // for ground state
e       = 1.6*10^-19         // charge of electron in columbs

// Calculations
E       = (h^2 * n^2)/(8*m*l^2 *e ) // Energy of electron in eV 
// Output
mprintf('Least Energy of an electron = %3.4f eV',E);
//==============================================================================


