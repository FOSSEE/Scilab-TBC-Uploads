// Scilab code Exa4.5.4: To calculate  the mass of neutron for  given reaction : P.No. 184 (2011)
// H(1,1)+n(0,1) = H(1,2)+G is the reaction
M_H_2 = 2.014735; // Mass of H-2, amu
M_H_1 = 1.008142 ; // Mass of H-1, amu
E_g = 2.230; // Energy of gamma rays, MeV
M_n_1 = [(M_H_2*931.47+E_g)-(M_H_1*931.47)]/931.47; //Mass of neutron, amu
printf("\nThe  mass of the neutron  : %8.6f MeV ", M_n_1)
// Result
//      The mass of the neutron  : 1.008987 MeV