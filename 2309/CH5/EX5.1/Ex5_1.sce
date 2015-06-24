// Chapter 5 Example 1
//==============================================================================
clc;
clear;

//input data
//Copper has FCC structure

r       = 1.273;            // Atomic radius in angstrom
N       = 6.023*10^26;      // Avagadros number in atoms/kilomole
A       = 63.5;             // Atomic weight of copper in grams
n       = 4;                // No. of atoms per unit cell for FCC

//Calculations
r1      = r*10^-10;           // Radius conversion from angstrom to m
a       = (4*r1)/sqrt(2);     // lattice parameter for FCC
p       = (n*A)/(N*a^3);      // Density of copper

//Output

mprintf('Lattice Constant a = %3.1e m\n Density of copper = %3.1f kg/m^3',a,p);
