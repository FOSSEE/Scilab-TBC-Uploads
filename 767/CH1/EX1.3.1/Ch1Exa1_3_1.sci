// Scilab code Exa1.3.1 Momentum determination for a neutron using de-Broglie relation : Page 31 (2011)
h = 6.626e-034;    // Planck's constant, Js
e = 1.602e-019;    // Charge on an electron, C
red_h = h/(2*%pi*e*1e+06);    // Reduced Planck's constant, MeV
lambda = 5.0e-015;    // de_Broglie wavelength of neutron, m
p = red_h/lambda;    // Momentum of the neutron, MeV-s/m
printf("\nThe momentum of the neutron from de-Broglie relation : %5.3e MeV-s/m", p);

// Result
// The momentum of the neutron from de-Broglie relation : 1.317e-007 MeV-s/m