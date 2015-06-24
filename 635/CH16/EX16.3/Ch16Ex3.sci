// Scilab Code Ex16.3 Calculating magnetic induction from orientational energy equivalent of thermal energy: Page-514 (2010)
k = 1.38e-023;    // Boltzmann constant, joule per mole per kelvin
mu_B = 9.27e-024;    // Bohr's magneton, joule per tesla
mu_m = 5*mu_B;        // Magnetic moment of paramagnetic sample, joule per tesla
T = 300;    // Thermal energy of specimen, joule
// At equilibrium, mu_m*B = k*T, solving for B
B = k*T/mu_m;    // Magentic induction of paramagnetic sample, weber per metre square
printf("\nThe magentic induction of paramagnetic sample = %5.2f weber per metre square", B);
// Result 
// The magentic induction of paramagnetic sample = 89.32 weber per metre square