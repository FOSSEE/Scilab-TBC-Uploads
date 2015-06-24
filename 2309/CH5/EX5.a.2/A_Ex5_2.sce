// Chapter 5 additional Example 2
//==============================================================================
clc;
clear;

// input data
// Copper has FCC structure

r       = 1.278;            // Atomic radius in angstrom
N       = 6.023*10^26;      // Avagadros number in atoms/kilomole
A       = 63.54;            // Atomic weight of copper 
n       = 4;                // No. of atoms per unit cell for FCC

//Calculations
r1      = r*10^-10;           // Radius conversion from angstrom to m
a       = (4*r1)/sqrt(2);     // lattice parameter for FCC
p       = (n*A)/(N*a^3);      // Density of copper

//Output

mprintf(' Density of copper = %3.2f kg/m^3',p);
//==============================================================================
