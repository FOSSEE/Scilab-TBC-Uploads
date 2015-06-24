// Scilab code Exa4.5.8: To determine the threshold energy for given reaction : P.no. 185 (2011)
// Na(11,23)+ n    >   F(9,20)+ He(2,4) is the reaction
M_Na_23 = 22.99097; // Mass of Na-23, amu
M_n_1 =1.00866 ; // Mass of n-1, amu
Q = -5.4; // Q-value, MeV
E_th = -Q*(M_Na_23+M_n_1)/M_Na_23; // Threshold energy, MeV
printf("\nThe threshold energy for the reaction  : %4.2f MeV ", E_th)
// Result  
//   The threshold energy for the reaction  : 5.64 MeV