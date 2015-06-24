// Chapter 5 Example 3
//==============================================================================
clc;
clear;

//input data
//α-Iron solidifies to BCC structure

r       = 1.273;            // Atomic radius in angstrom
N       = 6.023*10^26;      // Avagadros number in atoms/kilomole
A       = 55.85;            // Atomic weight of α-Iron in kilograms
n       = 2;                // No. of atoms per unit cell for BCC
p       = 7860;             // density in kg/m^-3

//Calculations

// p    = (n*A)/(N*a^3);    density

a       = ((n*A)/(N*p))^(1/3);  // lattice constant
a1      = a*10^10;              // m to angstrom conversion
r       = (a1*sqrt(3))/4         // atomic radius for BCC

//Output
mprintf('The Radius of the atom = %3.5f Å\n',r);
mprintf(' Note : atomic wt taken as 55.58*10^-3 instead of 55.85 in calculation')
//==============================================================================
