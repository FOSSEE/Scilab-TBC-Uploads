
// Theory and Problems of Thermodynamics
// Chapter 6
// Thermodynamic Potentials and Availability
// Example 12

clear ;clc;

//Given data
m = 1000                // mass of steel lump in kg
T1 = 1200               // initial temperature of lump in K
T2 = 400                // final temperature of lump in K
T0 = 300                // surrounding temperature in K
Cp = 0.5                // specific heat capacity of steel in kJ/kg K

// Calculations
del_S = m*Cp*log(T1/T2)                 // Change in entrophy of steel
//AE = Q-T0*del_S
AE = (m*Cp*(T1-T2)-T0*del_S)/1e3            // Available energy in MJ
UE = T0*del_S/1e3                       // Unavailable energy in MJ



// Output Results
mprintf('Available energy = %4.3f MJ' ,AE);
mprintf('\n Unavailable energy = %4.3f MJ' ,UE);
