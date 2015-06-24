// Scilab Code Ex15.4 Photoelectric effect in a photocell: Page-487 (2010)
e = 1.602e-019;    // Charge on an electron, C
h = 6.626e-034;    // Planck's constant, Js
c = 3.0e+08;    // Speed of light in vacuum, m/s
lambda = 1849e-010;    // Wavelength of incident light, m
V_0 = 2.72;    // Stopping potential for emitted electrons, V
f = c/lambda;    // Frequency of incident radiation , Hz
E = h*f;    // Energy carried by one photon from Planck's law, J
T_max = e*V_0;    // Maximum kinetic energy of electrons, J
// We have, T_max = E - h*f_0 = h*f - W
f_0 = poly(0, "f_0");    // Declare f_0 as variable
f_0 = roots(T_max - E + h*f_0);    // Threshold frequency for Cu metal, Hz
W = h*f_0/e;    // Work function of Cu metal, eV
printf("\nThe threhold frequency for Cu metal = %4.2e Hz", f_0);
printf("\nThe work function of Cu metal = %g eV", round(W));
printf("\nThe maximum kinetic energy of photoelectrons = %4.2f eV", T_max/e);
// Result 
// The threhold frequency for Cu metal = 9.65e+014 Hz
// The work function of Cu metal = 4 eV
// The maximum kinetic energy of photoelectrons = 2.72 eV 