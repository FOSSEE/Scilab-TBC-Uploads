// Scilab Code Ex2.6 Maximum velocity of emitted electrons: Pg:46 (2008)
h = 6.624e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light, m/s
m = 9.1e-031;    // Mass of an electron, kg
e = 1.6e-019;    // Energy equivalent of 1 eV, joule/eV
L = 4300e-010;    // Wavelength of incident light, m
phi = 5*e;       // Work function of nickel surface, joule
f0 = phi/h;    // Threshold frequency for nickel, Hz
L0 = c/f0;     // Threshold wavelength for nickel, m
printf("\nThe threshold wavelength for nickel = %4d angstrom", L0/1e-10);
printf("\nSince %4d A < %4d A, the electrons will not be emitted.", L0/1e-010, L/1e-010);
phi = 2.83*e;   // Work function of potassium surface, joule
f0 = phi/h;    // Threshold frequency for potassium, Hz
L0 = c/f0;     // Threshold wavelength for potassium, m
printf("\nThe threshold wavelength for potassium = %4d angstrom", L0/1e-10);
printf("\nSince %4d A > %4d A, the electrons will be emitted.", L0/1e-010, L/1e-010);
// Now KE = 1/2*m*v0^2 = h*f - h*f0, where v0 is the maximum velocity 
// solving for v0, we have
v0 = sqrt(2*h*c/m*(1/L - 1/L0));    // Maximum velocity of photoelectrons, m/s
printf("\nThe maximum velocity of photoelectrons = %5.3e m/s", v0);
// Result 
// The threshold wavelength for nickel = 2484 angstrom
// Since 2484 A < 4300 A, the electrons will not be emitted.
// The threshold wavelength for potassium = 4388 angstrom
// Since 4388 A > 4300 A, the electrons will be emitted.
// The maximum velocity of photoelectrons = 1.433e+005 m/s 