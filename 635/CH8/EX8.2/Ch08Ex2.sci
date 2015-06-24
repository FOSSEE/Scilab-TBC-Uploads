// Scilab Code Ex8.2 Calculation of impinging electrons on the target and characteristics of X-rays Page-253 (2010)
I = 2.5e-03;    // Current through X-ray tube, ampere
V = 6e+03;    // Potential across the X-ray  tube, volt
e = 1.6e-19;    // Charge on an electron, coulomb
m = 9.1e-031;    // mass of an electron, kg
t = 1;    // Transit time, second
Q = I*t;    // Total charge flowing per second through the x-ray tube, coulomb
n = Q/e;    // Number of electrons striking the target per second
// We have eV = 1/2*m*v^2 (stopping potential = maximum Kinetic energy)
// Solving for v
v = sqrt(2*e*V/m);    // speed of electrons striking the target, m/s
Lambda_min = 1.24e-06/V;    // Minimum wavelength of X-rays produced, metre
printf("\nThe number of electrons striking the target = %4.2e",n);
printf("\nThe velocity of electrons striking the target = %4.2e m/s",v);
printf("\nThe shortest wavelength present in X-rays = %4.2e m", Lambda_min);
// Result
// The number of electrons striking the target = 1.56e+016
// The velocity of electrons striking the target = 4.59e+007 m/s
// The shortest wavelength present in X-rays = 2.07e-010 m 