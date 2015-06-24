//==============================================================================
// Chapter 8 example 8

clc;
clear;

// Variable declaration
ni  = 2.5*10^19;            // carrier density in per m^3
q   = 1.6*10^-19;           // charge of electron in coulombs
un  = 0.35;                 //mobility of electrons in m^2/V-s
up  = 0.15;                 //mobility of electrons in m^2/V-s

// Calculations
sigma = ni*q*(un + up);         //conductivity in per ohm-m
p     = 1/sigma;                //resistivity in ohm-m


// Result
mprintf('Resistivity = %3.1f ohm-m',p);


//==================================================================================
