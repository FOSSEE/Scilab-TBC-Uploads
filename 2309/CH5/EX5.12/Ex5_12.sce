// Chapter 5 Example 12
//==============================================================================
clc;
clear;

// input data
// BCC structured crystal

p       = 7860;             // Density of iron in kg/m^3
N       = 6.023*10^26;      // Avagadros number in atoms/kilomole
A       = 55.85;            // Atomic weight
n       = 2;                // No. of atoms per unit cell for BCC

//Calculations

a       = ((n*A)/(N*p))^(1/3); //lattice constant

//Output

mprintf('Lattice Constant of Fe = %3.3f Å \n',a*10^10);
mprintf(' Note: density of iron is taken as 7.86 instead of 7860 in calculation')
//==============================================================================
