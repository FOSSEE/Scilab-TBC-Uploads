// Scilab code: Ex6.2 : Planck's constant: Pg: 156 (2008)
L = 24.7e-012;    // Wavelength of X-rays, m
V = 50000;    // Potential difference, volts
c = 3e+08;    // Velocity of light, m/s
e = 1.6e-019;    // Charge of an electron, coulombs
// Since e*V = h*c/L;    // Energy required by an electron to move through a potential barrier of one volt, joules
// solving for h
h = e*V*L/c;    // Planck's constant, Joule second
printf("\nh = %3.1e Js ", h);
// Result
// h = 6.6e-034 Js