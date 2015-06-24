// Chapter 4 Example 12
//==============================================================================
clc;
clear;

// input data
l       = 0.1*10^-9;         // length of one dimensional box 
h       = 6.625*10^-34       // plancks constant in Jsec
m       = 9.11*10^-31        // mass of electron in Kg
n       = 1;                 // for ground state
n5      = 6;                 // n value for fifth excited state
e       = 1.6*10^-19         // charge of electron in columbs

// Calculations
Eg      = (h^2 * n^2)/(8*m*l^2 *e ) // Energy in ground state in eV 
Ee      = (h^2 * n5^2)/(8*m*l^2 * e) // Energy in excited state  in eV
E       = Ee - Eg;                   // energy req to excite electrons from ground state to fift excited state

// Output
mprintf('Energy required to excite an electron from ground state to fifth excited state = %3.2f eV',E);
//==============================================================================


