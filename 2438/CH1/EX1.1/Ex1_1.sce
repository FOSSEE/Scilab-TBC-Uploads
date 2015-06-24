
//==============================================================================
// chapter 1 example 1

clc;
clear;

// input data
// FCC structured crystal

 p       = 6250;             // Density of crystal in kg/m^3
 N       = 6.023*10^26;      // Avagadros number in atoms/kilomole
 M       = 60.2;             // molecular weight per mole
 n       = 4;                // No. of atoms per unit cell for FCC

//Calculations

 a       = ((n*M)/(N*p))^(1/3);         //Lattice Constant Å

//Output

mprintf('Lattice Constant a = %3.2f.Å',a/10^-10);
//==============================================================================
