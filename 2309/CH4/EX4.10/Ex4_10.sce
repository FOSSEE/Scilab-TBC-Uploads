// Chapter 4 Example 10
//==============================================================================
clc;
clear;

// input data
l       = 0.1*10^-9;        // side of cubical box
h       = 6.625*10^-34       // plancks constant in Jsec
m       = 9.11*10^-31        // mass of electron in Kg
Kb      = 1.38*10^-23       // Boltzmann constant 

// Calculations
// for cubical box the energy eigen value is Enx ny nz = (h^2/(8*m*l^2))*(nx^2 + ny^2 +nz^2)
// For the next energy level to the lowest energy level nx = 1 , ny = 1 and nz = 2
nx      = 1
ny      = 1
nz      = 2
E112    = (h^2/(8*m*l^2))*( nx^2 + ny^2 + nz^2);

// we know the average energy of molecules of aperfect gas = (3/2)*(Kb*T)
T       = (2*E112)/(3*Kb);      // Temperature in kelvin

// Output
mprintf('E112 = %3.4e Joules\n Temperature of the molecules T = %3.4e K',E112,T);
//==============================================================================

