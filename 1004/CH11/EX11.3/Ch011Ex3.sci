// Scilab code: Ex11.3 : Gamma ray emission: Pg: 229 (2008)
h_bar = 1.0e-034;    // Order of reduced Planck's constant, Js
e = 1.0e-019;    // Order of energy equivalent of 1 eV, J/eV
tau1 = 1e-009;    // Life time of gamma ray emission, sec
tau2 = 1e-012;    // Life time of gamma ray emission, sec 
W1 = h_bar/tau1;    // Full width at half maxima for tau1, eV
W2 = h_bar/tau2;    // Full width at half maxima for tau2, eV
printf("\nThe full width at half maxima for %1.0e = %1.0e eV", tau1, W1/e);
printf("\nThe full width at half maxima for %1.0e = %1.0e eV", tau2, W2/e);
// Result
// The full width at half maxima for 1e-009 = 1e-006 eV
// The full width at half maxima for 1e-012 = 1e-003 eV 