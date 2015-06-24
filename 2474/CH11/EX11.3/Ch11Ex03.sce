// Scilab code Ex11.3: Pg.484 (2008)
clc; clear;
M = 1.99e+30;    // Mass of neutron star, kg
rho = 1e+17;    // Density of neutron star, kg/m^3
R = (3*M/(4*%pi*rho))^(1/3);    // Radius of neutron star, m
printf("\nThe radius of the neutron star = %4.1f km", R*1e-03);

// Result
// The radius of the neutron star = 16.8 km 