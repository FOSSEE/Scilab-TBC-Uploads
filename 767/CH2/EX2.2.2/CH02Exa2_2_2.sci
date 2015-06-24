// Scilab code Exa2.2.2 To calculate the difference in coulomb energy and nucleons' mass difference for mirror nuclei and show in agreement with actual mass difference Page 67 (2011)
 // Calculation of coulomb energy for mirror nuclei : N-7 and O-8
 // For N-7 nucleus
a_c = 0.7; // Coulomb energy constant, MeV
Z_N = 7;  //  Atpmic no. 
A = 15; // Atomic mass
E_C_N = a_c*Z_N*(Z_N-1)/(A^(1/3)); // Coulomb energy for N-7, MeV
// For O-8 nucleus
a_c = 0.7; // Coulomb energy constant, MeV
Z_O = 8;  //  Atpmic no. 
A = 15; // Atomic mass
E_C_O = a_c*Z_O*(Z_O-1)/(A^(1/3)); // Coulomb energy for O-8, MeV
C_E_d = E_C_O-E_C_N; // Coulomb energy difference, MeV
m_p = 1.007276*931.49; // Mass of proton, MeV
m_n = 1.008665*931.49; // Mass of neutron, MeV
M_d = m_n-m_p; // Mass difference of nucleons, MeV 
D_C_M = round(C_E_d-M_d); // Difference in coulomb energy and nucleon mass difference, MeV
M_O = 15.003070*931.49; // Mass of O-8, MeV
M_N = 15.000108*931.49; // Mass of N-7, MeV
D_A = round(M_O-M_N); // Actual mass difference, MeV
printf("\nDifference in Coulomb energy = %5.3f MeV\nNucleon mass difference  = %6.4f MeV\nDifference in Coulomb energy and nucleon mass difference = %5.3f MeV\nActual mass difference = %5.3f MeV",C_E_d, M_d ,D_C_M, D_A);
if D_A == D_C_M then printf("\nResult is verified")
end
// Result
// Difference in Coulomb energy = 3.974 MeV
// Nucleon mass difference  = 1.2938 MeV
// Difference in Coulomb energy and nucleon mass difference = 3.000 MeV
// Actual mass difference = 3.000 MeV
// Result is verified
