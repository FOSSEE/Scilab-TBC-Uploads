// Scilab Code Ex16.4 Behaviour of paramagnetic salt when placed in uniform magnetic field: Page-514 (2010)
k = 1.38e-023;    // Boltzmann constant, joule per mole per kelvin
T = 300;    // Thermal energy of specimen, joule
mu_B = 9.27e-024;    // Bohr's magneton, ampere per metre square
mu_0 = 4*%pi*1e-07;    // Magnetic permeability of free space, henry per metre
N = 1e+28;    // Concentration of paramagnetic ions in paramagnetic salt, per metre cube
mu_m = mu_B;
H = 1e+06;    // Applied magnetic field, A/m
chi = mu_0*N*mu_m^2/(3*k*T);    // Paramagnetic susceptibility of salt at room temperature
M = chi*H;    // Intensity of magnetization at room temperature, A/m
printf("\nThe paramagnetic susceptibility of salt at room temperature = %3.1e", chi);
printf("\nThe intensity of magnetization of salt = %d A/m", round(M));
// Result 
// The paramagnetic susceptibility of salt at room temperature = 8.7e-005
// The intensity of magnetization of salt = 87 A/m