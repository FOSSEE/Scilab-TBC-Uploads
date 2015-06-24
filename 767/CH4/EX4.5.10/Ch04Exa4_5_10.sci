// Scilab code Exa4.5.10: To determine the energy of gamma ray for reaction :: P.no. 186 (2011)
//    H(1,2)+G  =  H(1,1)+ n(0,1) is the given reaction
M_H_2 = 2.014735; // Mass of H-2, amu
M_H_1 = 1.008142 ; // Mass of H-1, amu
M_n_1 = 1.008987; // Mass of M_n_1, amu
Q = -5.4; // Q-value, MeV
E_g = (M_H_1*931.47+M_n_1*931.47)-(M_H_2*931.47); //Energy of the gama rays, MeV
printf("\nThe  energy of the gama rays  : %6.4f MeV ", E_g)
// Result  
//   The  energy of the gama rays  : 2.2299 MeV 