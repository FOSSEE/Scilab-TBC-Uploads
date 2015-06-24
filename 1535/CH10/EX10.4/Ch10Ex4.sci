// Scilab Code Ex10.4: Page-223 (2010)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
N_A = 6.023e+023;    // Avogadro's number
h = 6.626e-034;    // Planck's constant, Js
me = 9.1e-031;    // Mass of electron, kg
rho = 10.5;    // Density of silver, g per cm
m = 108;    // Molecular mass of silver, g/mol
N_D = rho*N_A/(m*1e-006);    // Number density of conduction electrons, per metre cube
E_F = h^2/(8*me)*(3/%pi*N_D)^(2/3);
printf("\nThe number density of conduction electrons = %4.2e per metre cube", N_D);
printf("\nThe Fermi energy of silver = %4.2f eV", E_F/e);

// Result
// The number density of conduction electrons = 5.86e+028 per metre cube
// The Fermi energy of silver = 5.51 eV 