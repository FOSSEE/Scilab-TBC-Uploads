// Chapter 5 additional Example 3
//==============================================================================
clc;
clear;

// input data
// NaCl has FCC structure

ANa     = 23;               // atomic wt of sodiim
ACl     = 35.45             // atomic wt of chlorine
N       = 6.023*10^26;      // Avagadros number in atoms/kilomole
n       = 4                 // No. of atoms per unit cell for FCC
p       = 2180;             // density in kg/m^-3

// Calculations

// p    = (n*A)/(N*a^3);    density
A       = ANa+ACl;              // atomic wt of NaCl
a       = ((n*A)/(N*p))^(1/3);  // lattice constant
r       = a/2                   // Distance b/w two adjacent atoms
//Output
mprintf('Distance between two adjacent atoms is r = %3.2e m',r);
//==============================================================================
