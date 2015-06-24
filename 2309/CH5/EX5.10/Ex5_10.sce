// Chapter 5 Example 10
//==============================================================================
clc;
clear;

// input data
// FCC structured crystal

p       = 6250;             // Density of crystal in kg/m^3
N       = 6.023*10^26;      // Avagadros number in atoms/kilomole
A       = 60.2;             // molecular weight
n       = 4;                // No. of atoms per unit cell for FCC

//Calculations

a       = ((n*A)/(N*p))^(1/3);

//Output

mprintf('Lattice Constant a = %3.1e m ',a);
//==============================================================================
