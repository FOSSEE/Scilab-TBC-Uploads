//===============================================================================================
// chapter 8 example 2

clc;
clear;

// Variable Declaration
T1  = 300;               // temperature in kelvin
nv  = 1.04*10^19;       //in cm^-3
T2  = 400;              //temperature in K
fl  = 0.25;            // fermi level position in eV

// Calculations
Nv  = (1.04*10^19)*(T2/T1)^(3/2);           //Nv at 400 k in cm^-3
kT  = (0.0259)*(T2/T1);                     //kT in eV
po  = Nv*exp(-(fl)/(kT));                   //hole oncentration in cm^-3


// Result
mprintf('Thermal equilibrium hole concentration = %3.2e cm^-3\n ',po);
mprintf('Note: Calculation mistake in textbook Nv is not multiplied by exponentiation');

//===================================================================================================
