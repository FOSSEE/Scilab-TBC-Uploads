//==========================================================================================================================
// Chapter 7 example 7

clc;
clear;

// Variable Declaration
T   = 300;          // temp in kelvin
k   = 1.38*10^-23;  // Boltzmann constant (m^2)*(kg)*(s^-2)*(K^-1)
e   = 1.602*10^-19; // charge of electron in coulombs
ue  = 3650;         // mobility of electrons 
uh  = 1720;         // mobility of holes

// Calculations
De  = (ue*k*T)/e;       // diffusion constant of electrons in cm^2/s
Dh  = (uh*k*T)/e;       // diffusion constant of holes in cm^2/s

// Result
mprintf('Diffusion constant of electrons = %3.1f cm^2/s\n Diffusion constant of electrons = %3.1f cm^2/s',De,Dh);

//========================================================================================================================

