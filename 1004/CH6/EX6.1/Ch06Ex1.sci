// Scilab code: Ex6.1 : Wavelength of X-rays: Pg: 156 (2008)
h = 6.6e-034;    // Planck's constant, J-s
V = 50000;    // Potential difference, volts
c = 3e+08;    // Velocity of light, m/s
e = 1.6e-019;    // Charge of an electron, coulombs
L_1 = h*c/(e*V);    // wavelength of X-rays, m
L = L_1/1e-010;    // wavelength of X-rays, angstorm
printf("\nThe shortest wavelength of X-rays = %6.4f angstorm", L);
// Result
// The shortest wavelength of X-rays = 0.2475 angstorm