// Example 2.14
clear all;
clc;

// Given data
rho = 1;                                        // Density of water in gram/cm^3

// 1.
M_H = 1.00797;                                  // Atomic weight of Hydrogen(H)
M_O = 15.9994;                                  // Atomic weight of Oxygen(O)
// As in water, there is two atoms of Hydrogen(H) and one atom of Oxygen(O)
M = (2*M_H)+M_O;                                // Molecular weight of water
// From standard data table
NA = 0.6022*10^24;                              // Avagodro number
// Calculation 
N = rho*NA/M;
// Result
printf("Atom density of water = %5.5E molecules/cm^3 \n",N);

// 2.
// As in water, there is two atoms of Hydrogen(H) and one atom of Oxygen(O)
N_H = 2*N;                                      // Atom density of Hydrogen
N_O = N;                                        // Atom density of Oxygen
// Result
printf("Atom density of Hydrogen(H) = %5.4E atoms/cm^3 \n",N_H);
printf("Atom density of Oxygen(O)= %5.4E atoms/cm^3 \n",N_O);

// 3.
// Using the data given in Table II.2, Appendix II for isotropic abundance of deuterium
isoab_H2 = 0.015;
// Calculation
N_H2 = isoab_H2*N_H/100;
// Result
printf("Atom density of Deuterium(H-2)= %5.4E atoms/cm^3 \n",N_H2);
