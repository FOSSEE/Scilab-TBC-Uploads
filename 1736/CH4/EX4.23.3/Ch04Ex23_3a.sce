// Scilab Code Ex4.3a: Page-139 (2006)
clc; clear;
E_F = 10;   // Fermi energy of electron in metal, eV
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
m = 9.1e-031;   // Mass of an electron, kg
E_av = 3/5*E_F;     // Average energy of free electron in metal at 0 K, eV
V_F = sqrt(2*E_av*e/m);   // Speed of free electron in metal at 0 K, eV
printf("\nThe average energy of free electron in metal at 0 K = %1d eV", E_av);
printf("\nThe speed of free electron in metal at 0 K = %4.2e m/s", V_F);

// Result 
// The average energy of free electron in metal at 0 K = 6 eV
// The speed of free electron in metal at 0 K = 1.45e+006 m/s 



