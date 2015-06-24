// Chapter 4 Additional Example 10
//==============================================================================
clc;
clear;

// input data
l       = 10^-10   ;         // length of one dimensional box in m 
h       = 6.625*10^-34       // plancks constant in Jsec
m       = 9.11*10^-31        // mass of electron in Kg
n       = 1;                 // for ground state
e       = 1.6*10^-19         // charge of electron in columbs

// Calculations
E       = 2*(h^2 * n^2)/(8*m*l^2 *e ) // Energy of system having two electrons
// Output
mprintf('Energy of the system having two electrons = %3.4f eV',E);
//==============================================================================


