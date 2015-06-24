// Chapter 5 Example 8
//==============================================================================
clc;
clear;

//input data
//Copper Crystallines in  FCC structure

p       = 8960;             // Density of copper in kg/m^3
N       = 6.023*10^26;      // Avagadros number in atoms/kilomole
A       = 63.5;             // Atomic weight of copper in kg/mol
n       = 4;                // No. of atoms per unit cell for FCC

//Calculations

a       = ((n*A)/(N*p))^(1/3);

//Output

mprintf('Lattice Constant a = %3.4f Å\n',a*10^10);
mprintf(' atomic wt of copper is taken as 63.5*10^-3 instead of 63.5 in textbook')
//==============================================================================
