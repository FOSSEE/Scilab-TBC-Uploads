// Scilab code Exa 3.5.2 : To calculate the K.E. of alpha particle in following decay   Pu-239 to U-235+He-4
M_239 = 239.052158; // Atomic mass of Pu-239, amu
M_235 = 235.043925; // Atomic mass of U-235, amu
M_4 = 4.002603; // Atomic mass of He-4, amu
Q = (M_239-M_235-M_4)*931.47; // Difference in masses, MeV
A = 241; // Mass number 
K_alpha = Q*(A-4)/A; // Kinetic energy of alpha particle, MeV
printf("\nKinetic energy of alpha particle %5.2f MeV", K_alpha)
// Result
//        Kinetic energy of alpha particle  5.16 MeV 