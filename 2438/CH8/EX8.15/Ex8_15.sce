//==============================================================================
// chapter 8 example 15

clc;
clear;

// Variable declaration
e   = 1.6*10^-19;       // charge of electron in coulombs
Dn  = 250;              // electron diffusion co-efficient cm^2/s
n1  = 10^18             // electron conc. in cm^-3
n2  = 7*10^17           // electron conc. in cm^-3
dx  = 0.10              // distance in cm

// Calculations
Jdiff   = e*Dn*((n1-n2)/dx);    // diffusion current density A/cm^2

// Result
mprintf('Diffusion Current Density = %d A/cm^2',Jdiff);

//=================================================================================
