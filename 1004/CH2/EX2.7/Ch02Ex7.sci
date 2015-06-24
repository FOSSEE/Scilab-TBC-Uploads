// Scilab Code Ex2.7 Maximum energy of ejected electrons: Pg:47 (2008)
h = 6.6e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light, m/s
L = 2537e-010;    // Wavelength of incident light, m
L0 = 3250e-010;    // Threshold wavelength of silver, m
// As U = h*(f - f0), the kinetic energy of ejected electrons
U = h*c*(1/L - 1/L0);    // Maximum energy of ejected electrons, J
printf("\nThe maximum energy of ejected electrons = %5.3e J", U);
// Result 
// The maximum energy of ejected electrons = 1.712e-019 J 