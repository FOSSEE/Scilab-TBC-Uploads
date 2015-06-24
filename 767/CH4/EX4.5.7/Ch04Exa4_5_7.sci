// Scilab code Exa4.5.7: To calculate Q-value  for given reaction : Page 185 (2011)
// O(8,16)     > N(7,15)+ H(1,1) is the given reaction
M_N_15 = 15.000108; // Mass of N-15, amu
M_O_16 = 16; // Mass of O-16, amu
M_H_1 = 1.007825; // Mass of H-1, amu
Q = [M_O_16-M_N_15-M_H_1]*931.49; // Q-value, MeV
printf("\nThe Q-value for the reaction  : %3.1f MeV ", Q)
// Result  
//The Q-value for the reaction  : -7.4 MeV  