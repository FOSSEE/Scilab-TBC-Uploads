// Scilab Code Ex13.10 Forward current of a p-n diode in terms of reverse saturation current using diode equation: Page-450 (2010)
e = 1.6e-019;    // Charge on an electron, coulomb
k = 1.38e-023;    // Boltzmann constant, J/mol/K
V = 0.35;    // Potential difference applied across a Ge diode, volt
T = 300;    // Room temperature, kelvin
Io = 1;        // Reverse saturation current, micro-ampere, for simplicity assume I0 = 1
Iv = Io*(exp(e*V/(k*T))-1);    // "Diode Equation" for net forward current, milliamperes
printf("\nThe net forward current = %4.2e Io", Iv);
// Result 
// The net forward current = 7.49e+005 Io