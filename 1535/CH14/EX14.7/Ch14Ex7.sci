// Scilab Code Ex14.7: Susceptibility and magnetisation of paramagnetic salt: Page-308 (2010)
mu_0 = 4*%pi*1e-07;    // Magnetic permeability of free space, tesla metre per ampere
N_A = 6.02e+026;    // Avogadro's number, per kmol
rho = 4370;    // Density of paramegnetic salt, kg per metre cube
M = 168.5;    // Molecular weight of paramagnetic salt, g/mol
T = 27+273;    // Temperature of paramagnetic salt, K
H = 2e+005;    // Field strength to which the  paramagnetic salt is subjected, ampere per metre
mu_B = 9.27e-024;    // Bohr's magneton, ampere metre square
p = 2;    // Number of Bohr magnetons per molecule
k = 1.38e-023;    // Boltzmann constant, J/K
N = rho*N_A/M;    // Total density of atoms in the paramagnetic salt, per metr cube
chi = mu_0*N*p^2*mu_B^2/(3*k*T);    // Magnetic susceptibility of paramagnetic salt
M = chi*H;    // Magnetisation of paramagnetic salt, ampere per metre
printf("\nThe magnetic susceptibility of paramagnetic salt = %4.2e per metre", chi);
printf("\nThe magnetisation of paramagnetic salt = %4.2e ampere per metre", M);

// Result
// The magnetic susceptibility of paramagnetic salt = 5.43e-004 per metre
// The magnetisation of paramagnetic salt = 1.09e+002 ampere per metre
