// Scilab Code Ex9.4 Debye temperature of copper at low temperature: Page-312(2010)
k = 1.38e-023;    // Boltzmann constant, joule/mol/kelvin
N = 6.023e+023;    // Avogadro's number
R = N*k;    // Universal gas constant, joule/kelvin 
C_vl = 4.6e-02;    // Lattice specific heat, J/kmol/K
// Lattice specific heat C_vl = Molar lattice specific heat, C_v
// or    12/5*%pi^4*R/(5*theta_D^3) = C_vl
// solving for theta_D, we have
theta_D = (12*%pi^4*R*1e+03/(5*C_vl))^(1/3);    // Debye temperature of copper at low temperature, K
printf("\nDebye temperature of copper at low temperature = %3d K", theta_D);
// Result 
// Debye temperature of copper at low temperature = 348 K 