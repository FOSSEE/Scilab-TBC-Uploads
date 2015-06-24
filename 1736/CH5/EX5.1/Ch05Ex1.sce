// Scilab Code Ex5.1: Page-176 (2006)
clc; clear;
h = 6.626e-34;  // Planck's constant, Js
h_bar = h/(2*%pi);  // Reduced Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
m = 9.1e-031;   // Mass of an electron, kg


// For Na
n_Na = 2.65e+28;    // electronic concentration of Na, per metre cube
k_F = (3*%pi^2*n_Na)^(1/3);    // Fermi wave vector, per cm
E_F = h_bar^2*k_F^2/(2*m*e);  // Fermi energy of Na, eV
printf("\nThe fermi energy of Na = %4.2f eV", E_F);
printf("\nThe band structure value of Na = %4.2f eV", 0.263*13.6);
// For K
n_K = 1.4e+28;  // electronic concentration of K, per metre cube
k_F = (3*%pi^2*n_K)^(1/3);    // Fermi wave vector, per cm
E_F = h_bar^2*k_F^2/(2*m*e);  // Fermi energy of K, eV
printf("\nThe fermi energy of K = %4.2f eV", E_F);
printf("\nThe band structure value of K = %4.2f eV", 0.164*13.6);
printf("\nThe agreement between the free electron and band theoretical values are fairly good both for Na and K");


// Result
// The fermi energy of Na = 3.25 eV
// The band structure value of Na = 3.58 eV
// The fermi energy of K = 2.12 eV
// The band structure value of K = 2.23 eV
// The agreement between the free electron and band theoretical values are fairly good both for Na and K 
