// Scilab Code Ex5.6 :: Page-5.27 (2009)
clc;clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
A = 235;    // Atomic weight of uranium, gm/mol
N_A = 6.023e+026;   // No. of atoms present in 235 kg of uranium
N = N_A/(A*1000); // No. of nuceli of uranium per gram
E = N*200;  // Energy produced by 1 g of U-235, MeV
printf("\nThe energy produced by 1 g of U-235 = %3.1e joule", E*e*1e+06);

// Result
// The energy produced by 1 g of U-235 = 8.2e+10 joule 
