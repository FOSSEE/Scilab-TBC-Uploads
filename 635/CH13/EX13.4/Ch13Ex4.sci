// Scilab Code Ex13.4 Comparison of intrinsic carrier densities of two semiconductors at room temperature  Page-433 (2010)
eV = 1.6e-019;    // Joule equivalent of 1 eV
m = 9.1e-031;    // Rest mass of an electron, kg
m_e = m;    // Effective mass of electron, kg
m_h = m;    // Effective mass of electron, kg
Eg_A = 0.36;    // Energy gap of A, eV
Eg_B = 0.72;    // Energy gap of B, eV
k = 1.38e-023;    // Boltzmann constant, J/mol/K
h = 6.626e-034;    // Planck's constant, Js
k_T = 0.052/2;    // Thermal energy, eV
// As n_i_ratio = ni_A/ni_B = exp(-Eg_A/(2*k_T))/exp(-Eg_A/(2*k_T)) 
n_i_ratio = exp(-Eg_A/(2*k_T))/exp(-Eg_B/(2*k_T));    // Intrinsic carrier density ratio of A and B
printf("\nThe ratio of intrinsic carrier density = %4d ", n_i_ratio); 
// Result 
// The ratio of intrinsic carrier density = 1015