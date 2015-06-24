// Scilab Code Ex2.4 Compressibility and ionic energy of NaCl crystal: Page-68 (2010)
e = 1.6D-19; // Electronic charge, C
ep_0 = 8.854D-12; // Absolute electrical permittivity of free space, coulomb square per newton per metre square
Re = 2.81D-10; // Equilibrium separation between Na+ and Cl- ions, m
A = 1.7496; // Madelung constant
n = 9; // Power of R in the repulsive term of potential energy of two particles 
IP_Na = 5.14; // Ionization potential of sodium, eV
EA_Cl = 3.61; // Electron Affinity of chlorine, eV
K0 = (72*%pi*ep_0*Re^4)/((n - 1)*A*e^2); // Compressibilty of NaCl crystal, metre square newton
U = -(A*e)/(4*%pi*ep_0*Re)*(1-1/n); // Potential energy of NaCl molecule at equilibrium separation, electron-volt
U_bar = U/2; // Potential energy per ion, electron-volt
delta_E = IP_Na - EA_Cl; // Energy required to produce the ion-pair, eV
E_ion = delta_E/2; // Energy required to produce per ion, eV
C_E = U_bar + E_ion; // Cohesive energy per ion, eV
printf("\nThe compressibility of NaCl crystal is %4.2e metre square newton", K0);
printf("\nThe cohesive energy of NaCl crystal is %4.2f eV", C_E);

// Result 
// The compressibility of NaCl crystal is 3.48e-011 metre square newton
// The cohesive energy of NaCl crystal is -3.21 eV
