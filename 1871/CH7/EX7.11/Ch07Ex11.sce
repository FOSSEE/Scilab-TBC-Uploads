// Scilab code Ex7.11: Pg:307 (2008)
clc;clear;
P = 3.2e+07/1.6e-013;    // Power developed by the reactor, MeV
E = 200;    // Energy released by the reactor per fission, MeV
n = P/E;    // Number of fissions occuring in the reactor per second, per sec
N = n*1000*3600;    // Number of atoms or nuclei of Uranium 235 consumed in 1000 hours
// Since the number of atoms in 235 g of Uranium is 6e+023
M = N/6e+023*235/1000;    // Mass of Uranium 235 consumed in 1000 hours, kg
printf("\nThe number of atoms of Uranium 235 undergoing fission per second = %4.1e ", N);
printf("\nThe mass of Uranium 235 consumed in 1000 hours = %4.2f kg ", M);

// Result 
// The number of atoms of Uranium 235 undergoing fission per second = 3.6e+024 
// The mass of Uranium 235 consumed in 1000 hours = 1.41 kg  