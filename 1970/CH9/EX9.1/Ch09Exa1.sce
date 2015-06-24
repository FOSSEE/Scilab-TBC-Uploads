// Scilab code Exa9.1 : : Page-389 (2011)  
clc; clear;
h_cut = 1.054e-034;   // Reduced Planck's constant, joule sec
rho = 2e+044;    // Density of the nuclear matter, kg per metre cube
V = 238/rho;    // Volume of the nuclear matter, metre cube
// For neutron
N = 238-92;    // Number of neutrons
M = 1.67482e-027;    // Mass of a neutron, kg
e = 1.602e-019;    // Energy equivalent of 1 eV, J/eV
E_f = (3*%pi^2)^(2/3)*h_cut^2/(2*M)*(N/V)^(2/3)/e;    // Fermi energy of neutron, eV 
printf("\nThe Fermi energy of neutron = %5.2f MeV", E_f/1e+006);
// For proton
N = 92;    // Number of protons
M = 1.67482e-027;    // Mass of a proton, kg
e = 1.602e-019;    // Energy equivalent of 1 eV, J/eV
E_f = (3*%pi^2)^(2/3)*h_cut^2/(2*M)*(N/V)^(2/3)/e;    // Fermi energy of neutron, eV 
printf("\nThe Fermi energy of proton = %5.2f MeV", E_f/1e+006);

// Result
// The Fermi energy of neutron = 48.92 MeV
// The Fermi energy of proton = 35.96 MeV 