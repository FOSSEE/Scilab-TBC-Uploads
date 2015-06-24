
// Theory and Problems of Thermodynamics
// Chapter 9
// Air_water Vapor Mixtures
// Example 1

clear ;clc;

//Given data
X1 = 0.3                // volume fraction of N2 
X2 = 0.5                // volume fraction of He 
X3 = 0.2                // volume fraction of CO2 
m = 3000                // mass flowrate of oil in kg/hr
Cp = 1.2                // molar heat capacity of oil in kJ/mol
T1_o = 523.15           // entering temperature of oil in K
T2_o = 323.15           // leaving temperature of oil in K
T1_g = 303.15           // entering temperature of oil in K
T2_g = 323.15           // leaving temperature of oil in K
Cp1 = 29.1783         // molar heat capacity of N2 in kJ/mol
Cp2 = 20.7860         // molar heat capacity of He in kJ/mol
Cp3 = 37.1444        // molar heat capacity of CO2 in kJ/mol

// Calculations
Cp_m = X1*Cp1 + X2*Cp2 + X3*Cp3     // molar heat capacity of gas mixture

N = m*Cp*(T1_o-T2_o)/(Cp_m*(T2_g-T1_g))


// Output Results
mprintf('Flow rate of gas mixture to cool oil = %4.3f kmol/h' ,N);

