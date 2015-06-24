// Scilab code Exa2.2.6  : To calculate the  coulomb coefficient and estimate nuclear radius for mirror nuclei: Page no. 69 (2011)
// Mirror nuclei : Na-11 and Mg-12 
m_p = 1.007276; //  Mass of proton, amu
m_n = 1.008665; // Mass of neutron, amu
M_Mg  = 22.994124; //  Atomic mass of Mg-12, amu
M_Na = 22.989768; // Atomic mass of Na-11, amu
A = 23; // Mass number
Z_Mg = 12; // Atomic number of Mg-12
e = 1.6e-019; // Charge of the electron, C
K = 8.98e+09; // Coulomb force constant
a_c = A^(1/3)/(2*Z_Mg-1)*[(M_Mg-M_Na)+(m_n-m_p)]*931.47; // Coulomb coefficient, MeV 
r_0 = 3/5*K*e^2/(a_c*1.6e-013); // Nuclear radius, m
printf("\nCoulomb coefficient = %4.2f MeV\nNuclear radius = %3.1e m", a_c, r_0)
//   Result      
//   Coulomb coefficient = 0.66 MeV
//   Nuclear radius = 1.3e-015 m 