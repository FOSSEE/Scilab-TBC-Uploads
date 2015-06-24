// Scilab code: Ex4.3: Energy of electrons through the potential barrier : Pg : 125 (2008)
h_bar = 1.054e-34;    // Reduced Planck's constant, J-s
Vo = 8e-019;    // Height of potential barrier, joules
m = 9.1e-031;    // Mass of an electron, kg
a = 5e-010;    // Width of potential barrier, m
T = 1/2;    // Transmission coefficient of electrons
// As T = 1/((1 + m*Vo^2*a^2)/2*E*h^2), solving for E we have
E = m*Vo^2*a^2/(2*(1/T-1)*h_bar^2*1.6e-019);    // Energy of half of the electrons through the potential barrier, eV
printf("\nThe energy of electrons through the potential barrier = %5.2f eV", E);
// Result
// The energy of electrons through the potential barrier = 40.96 eV 