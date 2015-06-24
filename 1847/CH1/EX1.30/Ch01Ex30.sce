// Scilab Code Ex1.30:: Page-1.33 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
c = 3e+08;      // Speed of light, m/s
v = 3e+07;        // Velocity of the electron, m/s
m0 = 9.1e-031;  // Rest mass of electron, kg
m = m0/sqrt(1-v^2/c^2); // Mass of moving electron, kg
delta_p_max = m*v;    // Maximum uncertainty in momentum of the particle, m/s
// delta_x_min*delta_p_max = h/(4*%pi), solving for delta_x_min
delta_x_min = h/(4*%pi*delta_p_max); // Minimum position uncertainty of particle, m

printf("\nThe smallest possible uncertainty in position of the electron = %5.3f angstrom", delta_x_min/1e-010);

// Result 
// The smallest possible uncertainty in position of the electron = 0.019 angstrom
