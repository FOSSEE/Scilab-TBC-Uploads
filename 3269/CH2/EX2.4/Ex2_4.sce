// Example 2.4
clear all;
clc;

// From the result of Example 2.3
// Rest mass energy of electron = 0.5110 MeV
rest_mass_mev = 0.5110;
me = 9.1095*10^(-28);                           // Mass of electron in grams
// From standard data table
// 1 amu = 1.6606*10^(-24)g
amu = 1.6606*10^(-24);
// Calculation
en_eq = (amu/me)*rest_mass_mev;
// Result
printf('\n Energy equivalent of one amu = %3.1f MeV\n',en_eq);
