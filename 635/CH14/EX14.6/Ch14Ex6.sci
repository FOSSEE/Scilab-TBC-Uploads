// Scilab Code Ex14.6 Effect of molecular deformation on polarizability: Page-471 (2010)
alpha_309 = 2.42e-039;    // Polarizability of ammonia molecule at 309 K, farad-metre square
alpha_448 = 1.74e-039;    // Polarizability of ammonia molecule at 448 K, farad-metre square
k = 1.38e-023;    // Boltzmann constant, J/mol/K
T1 = 309;    // First temperature of the experiment, kelvin
T2 = 448;    // Second temperature of the experiment, kelvin
// As alpha = alpha_i + alpha_d = alpha_i + p^2/(3*k*T) = alpha_i + bta/T
// where bta = p^2/(3*k)
// Thus alpha_309 = alpha_i + bta/309 and alpha_448 = alpha_i + bta/448
// Solving for bta
// bta(1/309-1/448) = alpha_309 - alpha_448   
bta = poly(0, "bta");
bta = roots(bta*(1/309 - 1/448) - alpha_309 + alpha_448);    // bta = p^2/(3*k), farad-kelvin metre square
// Solving for alpha_i
alpha_i = alpha_309 - bta/309;    // Polarizability due to permanent dipole moment, farad-metre square 
// Polarizability due to deformation of molecules = bta/T, bta = p^2/(3*k)
alpha_d_309 = bta/T1;    // Orientational polarizability at 309 K, farad-metre square
alpha_d_448 = bta/T2;    // Orientational polarizability at 448 K, farad-metre square
printf("\nThe polarizability due to permanent dipole moment = %4.1e farad-metre square", alpha_i);
printf("\nThe orientational polarization of ammonia at 309 K = %4.2e farad-metre square", alpha_d_309);
printf("\nThe orientational polarization of ammonia at 448 K = %4.2e farad-metre square", alpha_d_448);
// Result 
// The polarizability due to permanent dipole moment = 2.3e-040 farad-metre square
// The orientational polarization of ammonia at 309 K = 2.19e-039 farad-metre square
// The orientational polarization of ammonia at 448 K = 1.51e-039 farad-metre square 