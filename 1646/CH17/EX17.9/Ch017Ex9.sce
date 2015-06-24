// Scilab code Ex17.9 : Pg:893 (2011)
clc;clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
N_A = 6.023e+023;    // Avogadro's number
E_f = 200*1e+06*e;    // Energy released per fission, J
E_mol = E_f*N_A;    // Energy released by one mole of U235, J
E = E_mol*1000/235;    // Energy released by the fission of 1 kg of U235, J
printf("\nThe Energy released by the fission of 1 kg of U235 = %4.2e kWh", E/(1000*3600));

// Result
// The Energy released by the fission of 1 kg of U235 = 2.28e+007 kWh 
