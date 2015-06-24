// Scilab code Exa12.7 : : Page-575 (2011)
clc; clear;
k = 1.38e-23;        // Boltzmann constant, joules per kelvin
T = 323;            // Temperature, kelvin
E = (k*T)/1.6e-19;    // Thermal energy, joules
sigma_0 = 13.2e-28;   // Cross section, square metre
E_0 = 0.025;            // Energy of the neutron, electron volts
sigma_a = sigma_0*sqrt(E_0/E);        // Absorption cross section, square metre
t_half = 2.25;            // Half life, hours
lambda = 0.69/t_half;        // Decay constant, per hour
N_0 = 6.023e+026;            // Avogadro's number, per 
m_Mn = 55;                // Mass number of mangnese
w = 0.1e-03;            // Weight of mangnese foil, Kg
A = 200;                // Activity, disintegrations per sec
N = N_0*w/m_Mn;        // Number of mangnese nuclei in the foil
x1 = 1.5;                // Base, metre
x2 = 2.0;                // Height, metre
phi = A/(N*sigma_a*0.416);        // Neutron flux, neutrons per square metre per sec
phi1 = 1;    // For simplicity assume initial neutron flux to be unity, neutrons/Sq.m-sec
phi2 = 1/2*phi1;    // Given neutron flux, neutrons/Sq.m-sec
L1 = 1/log(phi1/phi2)/(x2-x1);    // Thermal diffusion length for given neutron flux, m
L = sqrt(1/((1/L1)^2+(%pi/x1)^2+(%pi/x2)^2));        // Diffusion length, metre
printf("\nThe neutron flux = %3.2e neutrons per square metre per sec \nThe diffusion length = %4.2f metre", phi, L);

// Result
// The neutron flux = 3.51e+008 neutrons per square metre per sec 
// The diffusion length = 0.38 metre
// Note: the difussion length is solved wrongly in the testbook
 