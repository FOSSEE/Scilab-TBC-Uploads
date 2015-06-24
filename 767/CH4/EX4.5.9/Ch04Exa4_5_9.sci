// Scilab code Exa4.5.9: To calculate Q-value for the reaction : Page 187 (2011)
// He(2,4)+ N(7,14) =  O(8,17)+ H(1,1)is the given reaction
M_N_14 = 14.00755; // Mass of N-14, amu
M_He_4 = 4.00388; // Mass of He-4, amu
M_O_17 = 17.00452; // Mass of O-17, amu
M_H_1 = 1.00815; // Mass of H-1, amu
Q = [M_N_14+M_He_4-M_O_17-M_H_1]*931.49; // Q-value, MeV
printf("\nThe Q-value for the reaction  : %4.2f MeV ", Q)
// Result  
//The Q-value for the reaction  : -1.16 MeV  