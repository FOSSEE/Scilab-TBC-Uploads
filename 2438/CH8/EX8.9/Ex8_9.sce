//==============================================================================
// chapter 8 example 9

clc;
clear;

// Variable declaration
p  = 3.16*10^3;            // resistivity ohm-m
e  = 1.6*10^-19;           // charge of electron in coulombs
ue = 0.14;                 //mobility of electrons in m^2/V-s
uh = 0.05;                  //mobility of holes in m^2/V-s

// Calculations

n  = 1/((p*e)*(ue + uh));           //carrier density  in perm^3

// Result
mprintf('Intrinsic Carrier Concentration = %3.2e /m^3',n);

//==============================================================================
