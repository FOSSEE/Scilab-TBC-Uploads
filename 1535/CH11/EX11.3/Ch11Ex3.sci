// Scilab Code Ex11.3: Page-250 (2010)
h = 6.626e-034;    // Planck's constant, Js
k = 1.38e-023;    // Boltzmann constant, J/K
// Stimulated Emission = Spontaneous Emission <=> exp(h*f/(k*T))-1 = 1 i.e.
// f/T = log(2)*k/h = A
A =  log(2)*k/h;    // Frequency per unit temperature, Hz/K
printf("\nThe stimulated emission equals spontaneous emission iff f/T = %4.2e Hz/K", A);

// Result
// The stimulated emission equals spontaneous emission iff f/T = 1.44e+010 Hz/K 