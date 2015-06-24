// Scilab Code Ex14.3 Calculating electric polarizability of a molecule from its susceptibility: Page-464 (2010)
NA = 6.023e+023;    // Avogadro's number
epsilon_0 = 8.85e-012;    // Electrical permittivity of free space, coulomb square per newton per metre
chi = 0.985e-03;    // Electrical susceptibility of carbon-dioxide molecule
rho = 1.977;    // Density of carbon-dioxide, kg per metre cube
M = 44e-03;    // Molecular weight of CO2, kg
N = NA*rho/M;    // Number of molecules per unit volume, per metre cube
alpha = epsilon_0*chi/N;    // Total electric polarizability of carbon-dioxide, farad-metre square
printf("\nThe total electric polarizability of carbon-dioxide = %4.2e farad-metre square", alpha);
// Result 
// The total electric polarizability of carbon-dioxide = 3.22e-040 farad-metre square 

