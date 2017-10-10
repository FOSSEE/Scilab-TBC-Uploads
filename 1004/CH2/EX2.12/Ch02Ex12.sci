// Scilab Code Ex2.12 Velocity of the emitted electron: Pg:49 (2008)
m = 9.1e-031;    // Mass of electron, kg
c = 3e+08;    // Speed of light, m/s
h= 6.626 * 10^-34;
e = 1.6e-019;    // Energy equivalent of 1 eV, joule/eV
phi = 2.3*e;    // Work function of metal, J
L = 4300e-010;    // Wavelength of incident light, m
// As 1/2*m*v^2 = h*f - phi = h*c/L - phi, Einstein's photoelectric equation
// Solving for v
v = sqrt(2*(h*c/L - phi)/m);    // Velocity of emitted electron, m/s
printf("\nThe velocity of emitted electron = %4.2e eV", v);
// Result 
// The velocity of emitted electron = 4.55e+005 eV