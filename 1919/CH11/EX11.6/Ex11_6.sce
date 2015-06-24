
// Theory and Problems of Thermodynamics
// Chapter 11
// Kinetic Theory of Gases
// Example 6
clear ;clc;

//Given data
V = 1.2                // X-component velocity lower range

// Caluclations
// The fraction of molecules with positive x-component of velocity = 0.5
F_mol = 0.5

// F = (1/sqrt(%pi))integrate(exp(-X^2),'X',0,1.2)

F_0 = 0.5*erf(V)

// The fraction of molecules with positive X-Component of velocity greater then 1.2Vmp
F_12 = F_mol - F_0          


// Output results
mprintf('The fraction of molecules with positive X-Component of velocity greater then 1.2Vmp = %4.4f', F_12)
