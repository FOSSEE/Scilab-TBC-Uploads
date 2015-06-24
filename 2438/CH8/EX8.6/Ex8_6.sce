//==============================================================================================================
// Chapter 8 example 6

clc;
clear;

// Variable declaration
no      = 10^17     // doping carrier conc
ni      = 1.5*10^10;        // intrinsic concentration
kT      = 0.0259

// Calculations
po      = (ni^2)/no
fl      = kT*log10(no/ni)

// Result
mprintf('Equlibrium hole concentration = %3.2e cm^-3\n Position of fermi energy level = %3.3f eV',po,fl)

//================================================================================================================
