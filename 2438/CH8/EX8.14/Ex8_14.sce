//=================================================================================================
// Chapter 8 example 14

clc;
clear;

// variable declaration
v   = 5;            // voltage in volts
r   = 10;           // resistance in k-ohm
J   = 60;           // current density in A/cm^2
E   = 100;          // electric field in V.m^-1
Nd  = 5*10^15;      //in cm^-3
up  = 410;          // approx hole mobility cm^2/V-s
Na  = 1.25*10^16;   // approx in cm^-3
e   = 1.6*10^-19;   // charge of electron in coulombs

// Calculations
I   = v/r;              // total current A
A   = I/J               // cross sectional area cm^2
L   = v/E               // length of resistor cm
sigma = L/(r*A);        //conductivity in (ohm-cm)^-1
sigma_comp = e*up*(Na - Nd);        //conductivity in (ohm-cm)^-1

// Result
mprintf('Conductivity of the compensated p-type semiconductor is %3.3f',sigma_comp);

//========================================================================================================

