// Chapter 5 additional Example 5
//==============================================================================
clc;
clear;

// input data
// KBr has FCC structure

N       = 6.023*10^26;      // Avagadros number in atoms/kilomole
A       = 119;              // Atomic weight of pottasium bromide
n       = 4;                // No. of atoms per unit cell for FCC
p       = 2700;             // density in kg/m^-3

//Calculations

// p    = (n*A)/(N*a^3);    density

a       = ((n*A)/(N*p))^(1/3);  // lattice constant
a1      = a*10^10;              // m to angstrom conversion

//Output
mprintf('Lattice constant = %3.1f Å',a1);
//==============================================================================
