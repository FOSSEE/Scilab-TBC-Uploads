// Scilab Code Ex2.23 Wavelength of emitted light: Pg:60 (2008)
e = 1.6e-019;    // Charge on an electron, coulomb
h = 6.624e-034;    // Planck's Constant, Js
n = 2;    // Principal quantum number for second orbit in H-atom
V = 13.6;    // Ionization potential of H-atom, V
U1 = -1*V*e;    // Energy of electron in first orbit, J
U2 = U1/n^2;    // Energy of electron in second orbit, J
// As U2 - U1 = h*c/L, solving for L
L = h*c/(U2 - U1);    // Wavelength of light emitted in the transition from second orbit to the first orbit, m
printf("\nThe wavelength of light emitted in the transition from second orbit to the first orbit = %4d angstrom", L/1e-010);
// Result 
// The wavelength of light emitted in the transition from second orbit to the first orbit = 1217 angstrom 