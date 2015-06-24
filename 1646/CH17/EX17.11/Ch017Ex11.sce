// Scilab code Ex17.11 : Pg:894 (2011)
clc;clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
N_A = 6.023e+026;    // Avogadro's number, per kmol
P = 2;    // Power produced by the fission of U235, watt
E_f = 200*1e+06*e;    // Energy released per fission, J
FR = P/E_f;    // Fission rate of U235, fission/sec
N = 0.5/235*N_A;    // Number of U235 nuclei in 0.5 kg of U235
E = 200*N;    // Energy released in the complete fissioning of 0.5 kg of U235, MeV
printf("\nThe fission rate of U235 = %4.2e fissions/sec", FR);
printf("\nThe energy released in the complete fissioning of 0.5 kg of U235 = %1.0e kcal", E*1e+06*e/(1000*4.186));

// Result
// The fission rate of U235 = 6.25e+010 fissions/sec
// The energy released in the complete fissioning of 0.5 kg of U235 = 1e+010 kcal 
