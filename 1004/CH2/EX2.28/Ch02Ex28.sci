// Scilab Code Ex2.28 Photon emitted by hydrogen atom: Pg:64 (2008)
e = 1.6e-019;    // Energy equivalent of 1 eV, joule/eV
h = 6.624e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light, m/s
E1 = -13.6;    // Energy of electron in the first orbit of hydrogen atom, eV
n = 2;    // Principal quantum number for second orbit
E2 = E1/n^2;    // Energy of electron in the second orbit of hydrogen atom, eV
E = (E2 - E1)*e;    // Energy of photon emitted, joule
P = E/c;    // Momentum of photon, kg-m/s
L = (h/P)/1e-010;    // de_Broglie wavelength of photon, angstrom
printf("\nThe energy of photon emitted by hydrogen atom %5.2e J", E);
printf("\nThe momentum of photon = %4.2e kg-m/s", P);
printf("\nThe de_Broglie wavelength of photon = %4d angstrom", L);
// Result 
// The energy of photon emitted by hydrogen atom 1.63e-018 J 
// The momentum of photon = 5.44e-027 kg-m/s
// The de_Broglie wavelength of photon = 1217 angstrom 