// Scilab Code Ex10.1.1 Energy and mass equivalence of wavelength: Pg:209 (2008)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
me = 9.1e-031;    // Mass of en electron, kg
L = 4.5e-013;    // Wavelength of gamma ray, m
h = 6.626e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light, m/s
U = h*c/L;    // Energy equivalence of wavelength, J
m = U/c^2;    // Mass equivalent of wavelength, kg
printf("\nThe energy equivalence of wavelength %3.1e m = %4.2f MeV", L, U/(e*1e+06));
printf("\nThe mass equivalence of wavelength %3.1e m = %4.2f me", L, m/me);
// Result 
// The energy equivalence of wavelength 4.5e-013 m = 2.76 MeV
// The mass equivalence of wavelength 4.5e-013 m = 5.39 me 