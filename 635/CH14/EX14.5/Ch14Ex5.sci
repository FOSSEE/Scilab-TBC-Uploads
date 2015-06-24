// Scilab Code Ex14.5 Dipolar polarization of HCl molecule: Page-470 (2010)
k = 1.38e-023;    // Boltzmann constant, J/mol/K
T = 300;    // Temperature of the HCl vapour, kelvin
N = 1e+027;    // Number of HCL molecuels per unit volume, per metre cube
E = 1e+06;    // Electric field strength to which the HCL vapour is subjected, volt/m
p = 3.46e-030;    // The dipole moment of HCl molecule,C-m
alpha_d = p^2/(3*k*T);    // Dipolar polarizability of HCl molecule, farad-metre square
// As P = N*p = N*alpha_d*E
P = N*alpha_d*E;        // Orientational or Dipolar polarization of HCl molecule, coulomb per metre square
E_M = p*E;    // Magnetic energy stored in the dipole-field system, joule
E_Th = k*T;    // Thermal energy of the HCl molecule, joule
a = E_M/E_Th;    // Ratio of magnetic energy to the thermal energy
printf("\nThe orientational polarization of molecules in HCl vapour = %4.2e coulomb per metre square", P);
printf("\nThe ratio of magnetic energy to the thermal energy = %f << 1", a);
// Result 
// The orientational polarization of molecules in HCl vapour = 9.64e-007 coulomb per metre square
// The ratio of magnetic energy to the thermal energy = 0.000836 << 1 

