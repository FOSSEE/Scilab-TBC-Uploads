//=============================================================================
// chapter 9 example 3

clc
clear

// Variable declaration

P   = 400;          // tensile force in newtons 
d   = 6*10^-3;      // diameter of steel rod m

// Calculations
r   =d/2;
E_stress = P/((%pi/4)*r*r);         //e_stress in N/m^2

// Result

mprintf('Engineering stress = %3.2f MPa',E_stress/10^6);

//===========================================================================
