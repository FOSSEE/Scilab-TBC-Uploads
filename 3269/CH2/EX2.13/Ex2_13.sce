// Example 2.13
clear all;
clc;

// Given data
rho_NaCl = 2.17;                    // Density of Sodium Chloride(NaCl) in gram/cm^3
// From standard data table
NA = 0.6022*10^24;                  // Avogodro number
M_Na = 22.99;                       // Atomic weight of Sodium(Na)
M_Cl = 35.453;                      // Atomic weight of Chlorine(Cl)
M_NaCl = M_Na+M_Cl;                 // Molecular weight of Sodium Chloride(NaCl)
// Calculation
N = rho_NaCl*NA/M_NaCl;
// As in NaCl, there is one atom of Na and Cl
N_Na = N;
N_Cl = N;
// Result
printf(" Atom density of Sodium and Chlorine = %5.4E molecules/cm^3 \n",N);
