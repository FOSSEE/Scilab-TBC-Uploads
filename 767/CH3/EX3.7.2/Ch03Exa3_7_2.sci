// Scilab code Exa. 3.7.2 : To determine the energies conversion for K and L-shell electrons  for reaction Cs(55,137) = Ba(56,137)+e(-1,0): Page no. 141 : (2011)
E = 662; // Energy available with the nucleus, KeV
I_b_K = 37.4; // Binding energy for K-shell, KeV
I_b_L = 6.0; // Binding energy for L-shell, KeV
E_c_K = E-I_b_K; // Energy conversion for K-shell, KeV
E_c_L = E-I_b_L; // Energy conversion for L-shell, KeV
printf("\n Energies conversion for K and L-shell electrons : %5.1f KeV and %d KeV", E_c_K, E_c_L)
// Result
//      Energies conversion for K and L-shell electrons : 624.6 KeV and 656 KeV