// Scilab code Ex10.6: Pg.430 (2008)
clc; clear;
rho = 10.50e+06;    // Density of silver, g/m^3
M = 107.9;    // Molecular weight of silver, g/mol
N = 6.02e+23;    // Avagadro's number
n_a = (rho*N)/M;    // Density of atoms, atoms/m^3
// Assuming each silver atom contributing one electron to fermi gas, therefore
n_e = n_a;    // Number density, electrons/m^3
h = 6.63e-34;    // Planck's constant, J-s
e = 1.6e-19;    // Electronic charge, C
m_e = 9.11e-31;    // Mass of electrons, kg
k = 1.38e-23;    // Boltzmann constant, J/K
E_F = h^2/(2*m_e)*(3*n_e/(8*%pi))^(2/3);    // Fermi energy of silver, J
T_F = E_F/k ;   // Fermi temperature of silver, K
printf("\nThe Fermi energy of silver = %4.2e J or %4.2f eV", E_F, E_F/e);
printf("\nThe Fermi temperature of silver = %4.2e K", T_F);

// Result
// The Fermi energy of silver = 8.82e-019 J or 5.51 eV
// The Fermi temperature of silver = 6.39e+004 K 