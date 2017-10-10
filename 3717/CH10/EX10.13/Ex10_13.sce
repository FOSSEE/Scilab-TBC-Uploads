// Ex10_13 Page:224 (2014)
clc;clear;
e = 1.6e-019;    // Charge on an electron, C
epsilon_0 = 8.85e-012;    // Absolute electric permittivity of free space, coulomb-square/N/Sq.m
r_0 = 0.31e-009;    // Equilibrium separation of Na+ and Cl- ions, m
alpha = 1.748;    // Madelung constant
n = 9;    // Repulsive exponent
E_ion =  5;    // Ionization energy of NaCl, eV
V = -1*alpha*e^2/(4*3.14*epsilon_0*r_0*e)*(1-1/n);    // Potential energy of Na+ and Cl- ions, eV
E_ele = 1/2*V;    // Electron affinity, eV
E_trans = E_ion + E_ele;    // Electron transfer energy, eV
delta_E = E_trans/2;    // Contribution per ion to the cohesive energy, eV
E_cohesive = E_ele + delta_E;    // Cohesive energy per NaCl atom, eV
printf("\nThe cohesive energy per NaCl atom = %5.3f eV", E_cohesive);

// Result
// The cohesive energy per NaCl atom = -2.911 eV 
// The answers vary due to round off error