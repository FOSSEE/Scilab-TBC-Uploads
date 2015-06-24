// Scilab code: Ex6.5 : Minimum voltage of an X-ray tube : Pg: 157 (2008)
h = 6.625e-034;    // Planck's constant, Js
c = 3e+08;    // Velocity of light, m/s
e = 1.6e-019;    // Charge of an electron, coulombs
L = 1e-010;    // Wavelength of X-rays, m
// Since e*V = h*c/L;    // Energy required by an electron to move through a potential barrier of one volt, joules
// solving for V
V = h*c/(L*e);    // Potential difference, volts
printf("\nThe minimum voltage of an X-ray tube = %5.2f kV", V/1e+03);
// Result
// The minimum voltage of an X-ray tube = 12.42 kV 