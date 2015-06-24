// Scilab Code Ex9.2 Specific heat of copper from Debye temperature: Page-311(2010)
h = 6.626e-034;    // Planck's constant, joule second
k = 1.38e-023;    // Boltzmann constant, joule/mol/kelvin
T = 30;    // Given temperature, kelvin
N = 6.023e+023;    // Avogadro's number
R = N*k;    // Universal gas constant, joule/kelvin 
v_l = 4.76e+03;    // Longitudinal velocity of lattice waves, m/s
v_t = 2.32e+03;    // Tranverse velocity of lattice waves, 
rho = 8.9e+03;    // Density of copper, kg per metre cube
A_Cu = 63.5;    // Gram atomic mass of Cu, g
M = A_Cu*1e-03;    // Mass of 1 mole of Cu-atoms, kg
V = M/rho;    // Volume of copper, metre cube
theta_D = (h/k)*((9*N)/((4*%pi*V)*((1/v_l^3)+(2/v_t^3))))^(1/3);    // Debye temperature of copper, K
C_v = 12/5*%pi^4*R*(T/theta_D)^3;    // Specific heat of copper, kJ/kmol/kelvin
printf("\nThe specific heat of copper = %4.2f kJ/kmol/kelvin", C_v); 
// Result 
// The specific heat of copper = 1.33 kJ/kmol/kelvin 