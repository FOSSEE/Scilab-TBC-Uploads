// Scilab Code Ex2.9 Work function of metal: Pg:48 (2008)
h = 6.624e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light, m/s
e = 1.6e-019;    // Energy equivalent of 1 eV, joule/eV
V = 1;    // Stopping potential for the electrons emitted from the metal, V
L = 2500e-010;    // Wavelength of incident light, m
f = c/L;    // Frequency of incident light, Hz
// Now KE = h*f - phi = e*V, Einstein's Photoelectric equation, solving for phi
phi = h*f - e*V;    // Work function of metal
printf("\nThe work function of metal = %5.3f eV", phi/e);
// Result 
// The work function of metal = 3.968 eV  