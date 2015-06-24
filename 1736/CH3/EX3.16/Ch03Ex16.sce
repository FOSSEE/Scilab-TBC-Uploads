// Scilab Code Ex3.16: Page-100 (2006)
clc; clear;
N_A = 6.023e+023;       // Avogadro's number
c = 3.0e+08;    // Speed of light, m/s
epsilon_0 = 15; // Dielectric constant of the medium
m = 2.0e-022;       // Mass of ion, g
e = 4.8e-010;   // Charge on the ion, C
rho = 7;    // Average density of solid, g/cc
A = 120;    // Average atomic weight of solid, g
N = rho/A*N_A;  // Number of ions per cc, per cm cube
f_P = 1/(2*%pi)*sqrt(4*%pi*N*e^2/(m*epsilon_0));      // Plasma frequency of vibrating ions in the crystal, Hz
lambda_P = c/f_P;   // Plasma wavelength of vibrating ions in the crystal, cm
printf("\nThe plasma frequency of vibrating ions in InSb crystal = %3.1e Hz", f_P);
printf("\nThe plasma wavelength of vibrating ions in InSb crystal = %3d micron", lambda_P/1e-06);
printf("\nThe calculated frequency lies in the infrared region.")

// Result 
// The plasma frequency of vibrating ions in InSb crystal = 9.3e+011 Hz
// The plasma wavelength of vibrating ions in InSb crystal = 323 micron 
// The calculated frequency lies in the infrared region. 
