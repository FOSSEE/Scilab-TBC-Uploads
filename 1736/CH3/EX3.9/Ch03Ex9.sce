// Scilab Code Ex3.9: Page-91 (2006)
clc; clear;
N = 6.023e+023; // Avogadro's number, per kmol
e = 1.602e-019;   // Energy equivalent of 1 eV, J/eV
k = 1.38e-023;  // Boltzmann constant, J/K
R = N*k;    // Molar gas constant, J/kmol/K
E_F = 3.2;    // Fermi energy of Hf, eV
theta_D = 242;  // Debye temperature of Hf, K
T_F = E_F/k;    // Fermi temperature of Hf, K
T = [300, 200, 100, 10, 5]; // Declare a vector of 5 temperature values, K
printf("\n________________________");
printf("\nT(K)      C_l (J/kmol/K)");
printf("\n________________________")
for i = 1:1:5
    C_l = 12/5*(%pi^4*R)*(T(i)/theta_D)^3;     // Lattice heat capacity of Hf, J/kmol/K    
    printf("\n%3d       %8.3f", T(i), C_l);
end
printf("\n________________________")

// Result 
// ________________________
// T(K)      C_l (J/kmol/K)
// ________________________
// 300       3701.863
// 200       1096.848
// 100        137.106
//  10          0.137
//   5          0.017
// ________________________ 
