// Scilab Code Ex2.2 Maximum velocity of photoelectrons: Pg:44 (2008)
phi = 4*1.6e-019;    // Work function for photoelectric surface, joule
h = 6.6e-034;    // Planck's constant, Js
e = 1.6e-019;    // Electronic charge, coulomb
m = 9.1e-031;    // Mass of the electron, kg
f = 1e+15;    // Frequency of incident photons, Hz
c = 3e+08;    // Speed of light, m/s
// KE = 1/2*m*v^2 = h*f - phi, solving for v, we have
v = sqrt(2*(h*f - phi)/m);    // Maximum velocity of photoelectrons, m/s
printf("\nThe maximum velocity of photoelectrons = %5.3e m/s", v);
// Result 
// The maximum velocity of photoelectrons = 2.097e+005 m/s 