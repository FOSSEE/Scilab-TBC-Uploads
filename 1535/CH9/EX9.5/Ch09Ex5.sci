// Scilab Code Ex9.5: Uncertainty principle for energy and time: Page-203 (2010)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
h = 6.626e-034;    // Planck's constant, Js
dt = 1e-008;    // Uncertainty in time, s
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
// From Heisenberg uncertainty principle,
// dE*dt = h_bar/2, solving for dE
dE = h_bar/(2*dt*e);    // Uncertainty in energy of the excited state, m
printf("\nThe uncertainty in energy of the excited state = %4.2e eV", dE);

// Result
// The uncertainty in energy of the excited state = 3.30e-008 eV