// Scilab Code Ex9.5 Debye temperature for gold : Page-313(2010)
h = 6.626e-034;    // Planck's constant, Js
k = 1.38e-023;    // Boltzmann constant, joule/mol/kelvin
N = 6.023e+023;    // Avogadro's number
R = N*k;    // Universal gas constant, joule/kelvin 
M = 197e-03;    // Gram atomic weight of gold, g
rho = 1.9e+04;    // Density of gold, kg per metre cube
V = M/rho;    // Volume of gold, metre cube
v = 2100;    // Velocity of sound in gold medium, m/s
theta_D = h*v/k*(9*N/(12*%pi*V))^(1/3);    // Debye temperature for gold, K
printf("\nDebye temperature of gold = %3d K", theta_D);
// Result 
// Debye temperature of gold = 242 K