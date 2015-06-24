
// Theory and Problems of Thermodynamics
// Chapter 12
// Statistical Thermodynamics
// Example 13
clear ;clc;

//Given data
T1 = 120                // temperature of aluminium
TD1 = 398               // Debye temperature of aluminium
TD2 = 172               // Debye temperature of sodium

// Calculations
// Cv/Nk is a function of T/TD only
// T1/TD1 = T2/TD2
T2 = T1/TD1*TD2         // temperature of sodium

// output results
mprintf('Temperature at which sodium molar heat capacity is equal to aluminium = %4.2f K', T2)
