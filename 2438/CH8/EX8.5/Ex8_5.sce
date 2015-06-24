//================================================================================
// chapter 8 example 5

clc;
clear;

// variable declaration
mo  = 9.11*10^-31;          // mass of electron inkilograms
e   = 1.6*10^-19;           // charge of electron in coulombs
er  = 13.2;                 //relative permitivity in F/m
eo  = 8.85*10^-12;          // permitivity in F/m
h   = 6.63*10^-34;          // plancks constant J.s
me  = 0.067*mo;           

// Calculations

E   = (me*e^4)/(8*(eo*er)^2 * h^2 * e);         //energy in eV    

// Result
mprintf('Donor binding energy = %3.4f eV',E);

//==============================================================================
