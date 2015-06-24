// Scilab code Ex17.10 : Pg:894 (2011)
clc;clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
E = 3.2e+07;    // Energy released per second by the reactor, J
E_f = 200*1e+06*e;    // Energy released per fission, J
N = E/E_f;    // Number of fissions per second of U235, per second
printf("\nThe number of U235 atoms undergoing fissions per second = %1.0e", N);

// Result
// The number of U235 atoms undergoing fissions per second = 1e+018 
