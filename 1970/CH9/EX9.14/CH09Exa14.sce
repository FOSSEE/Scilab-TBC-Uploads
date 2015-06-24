// Scilab code Exa9.14 : : Page-396 (2011)
clc; clear;
R_0 = 1.2e-15;  // Distance of closest approach, metre
j = 7/2;        // Total angular momentum
A = 41;         // Mass number of Scandium
Z = 20;         // Atomic number of Calcium
Q_Sc = -(2*j-1)/(2*j+2)*(R_0*A^(1/3))^2;       // Electric quadrupole of Scandium nucleus, Sq. m
Q_Ca = Z/(A-1)^2*abs(Q_Sc);        // Electric quadrupole of calcium nucleus, Sq. m
printf("\nThe electric quadrupole of scandium nucleus = %4.2e square metre \nThe electric quadrupole of calcium nucleus = %4.2e square metre", Q_Sc, Q_Ca);

// Result
// The electric quadrupole of scandium nucleus = -1.14e-029 square metre 
// The electric quadrupole of calcium nucleus = 1.43e-031 square metre 