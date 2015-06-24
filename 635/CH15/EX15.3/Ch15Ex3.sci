// Scilab Code Ex15.3 Finding number of photons for green wavelength of Hg: Page-487 (2010)
h = 6.626e-034;    // Planck's constant, Js
c = 3.0e+08;    // Speed of light in vacuum, m/s
lambda = 496.1e-09;    // Wavelength of green light of mercury, m
E_total = 1;    // Work done by photons from green light, J
f = c/lambda;    // Frequency of the green light, Hz
E = h*f;    // Energy carried by one photon from Planck's law, J
N = E_total/E;    // Number of photons of green light of Hg
printf("\nThe number of photons of green light of Hg = %3.1e", N);
// Result 
// The number of photons of green light of Hg = 2.5e+018