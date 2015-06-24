//===========================================================================
// Chapter 8 example 19

clc;
clear;

// Variable declaration
Nd  = 10^21;        // donar density per in  m^3
H   = 0.6;          // magnetic field in T
J   = 500;          // current density A/m^2
d   = 3*10^-3;      // width in m
e   = 1.6*10^-19        // charge of electron coulombs

// Calculations
Ey  = (J*H)/(Nd*e)      // field in V/m 
vh  = Ey*d;             // hall voltage V

// Result
mprintf('Hall Voltage = %3.1f mV',vh*10^3);

//===========================================================================
