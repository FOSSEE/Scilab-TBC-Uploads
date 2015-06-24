//=============================================================================
// Chapter 8 example 20

clc;
clear;

// Variable declaration
e   = 1.6*10^-19        // charge of electron
Rh  = -0.0125;          // hall co-efficient
ue  = 0.36;             // electron mobility
E   = 80;               // electric field

// Calculations
n   = -1/(Rh*e)
J   = n*e*ue*E          // current density

// Result
mprintf('Current density = %d Ampere/m^2',J);

//==============================================================================
