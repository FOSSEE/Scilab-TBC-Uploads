// Example 2.1
clear all;
clc;
// Given data
atom_h = 6.6*10^24;                      // Number of atoms in Hydrogen
// Using the data given in Table II.2, Appendix II for isotropic abundance of deuterium
isoab_H2 = 0.015;                        // Isotropic abundance of deuterium
// Calculation
totatom_d=(isoab_H2*atom_h)/100;
// Result
printf('\n Number of deuterium atoms = %2.1E \n',totatom_d);

