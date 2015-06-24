// Scilab Code Ex4.10: Page-122 (2006)
clc; clear;
k = 1.38e-023;  // Boltzmann constant, J/mol/K
T = 500;    // Rise in temperature of Al, K
EF_0 = 11.63;    // Fermi energy of Al, eV
EF_T = EF_0*(1-%pi^2/12*(k*T/EF_0)^2);  // Change in Fermi energy of Al with temperature, eV
printf("\nThe change in Fermi energy of Al with tempertaure rise of 500 degree celsius = %5.2f eV", EF_T);

// Result 
// The change in Fermi energy of Al with tempertaure rise of 500 degree celsius = 11.63 eV 

