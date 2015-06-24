//=========================================================================
// chapter 8 example 11

clc;
clear;

// variable declaration
p   = 5*10^-3;          // resistivity in ohm-m
ue  = 0.3;              // electron mobility m^2/volt-s
uh  = 0.1;              // hole mobility m^2/volt-s
e   = 1.6*10^-19        // charge of electron in coulombs

// calculations
sigma   = 1/p;                   // conductivity in per ohm -m
n       = sigma/(e*(ue + uh));  // carrier density per m^3

// Result
mprintf('Carrier Density = %3.1e /m^3',n);

//==========================================================================
