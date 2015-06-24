// Scilab code Exa4.8.1: To calculate the energy liberated during fusion reaction: Page 194 (2011)
//  5*H(1,2)= He(2,3)+He(2,4)+H(1,2)+2*n(0,1)+25MeV is the given reaction
N = 6.023e+026/2*10; // Number of atoms in 10Kg of H-2, atoms
E = 25/5*1.6e-013; // Energy liberate during fusion of 1 atom of H-2, J
E_l = E*N; // Energy liberate during fusion of 10 Kg  of H-2, J
printf("\n Energy liberated during fusion of 10 Kg  of H-2 = %4.2e J", E_l)
// Result  
//   Energy liberated during fusion of 10 Kg  of H-2 = 2.41e+015 J