// Scilab Code Ex9.2.3: Page-414 (2008)
clc; clear;
h = 6.63e-034;    // Planck's constant, Js
c = 3.00e+008;    // Speed of light in vacuum, m/s
e = 1.6e-019;    // Energy equivalent of 1 eV, J
m_e = 9.1e-031;    // Rest mass of an electron, kg
lambda0 = 2762e-010;    // Thereshold wavelength of silver, m
lambda = 2000e-010;    // Wavelength of ultraviolet rays, m
E_max = h*c*(1/lambda - 1/lambda0);    // Maximum kinetic energy of the ejected electrons from Einstein's photoelectric equation, J
// As E_max = 1/2*m_e*v^2, solving for v
v_max = sqrt(2*E_max/m_e);    // Maximum velocity of the photoelectrons, m/s
V0 = E_max/e;    // Stopping potential for the electrons, V
printf("\nThe maximum kinetic energy of the ejected electrons = %5.3e J", E_max);
printf("\nThe maximum velocity of the photoelectrons = %4.2e m/s", v_max);
printf("\nThe stopping potential for the electrons = %5.3f V", V0);

// Result 
// The maximum kinetic energy of the ejected electrons = 2.744e-019 J
// The maximum velocity of the photoelectrons = 7.77e+005 m/s
// The stopping potential for the electrons = 1.715 V 