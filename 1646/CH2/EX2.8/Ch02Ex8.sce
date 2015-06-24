// Scilab Code Ex2.8 : Page:81 (2011) 
clc;clear;
hcut = 1.054e-34;   // Reduced Planck's constant, Js
v = 3e+07;....// Velocity of the electron, m/s
c = 3e+08;....// Speed of light in vacuum, m/s
m0 = 9.1e-31;....// Rest mass of an electron, kg
del_v = 3e+08;....// Uncertainty in velocity of the electron, m/s
del_x = (hcut*sqrt(1-v^2/c^2))/(2*m0*del_v);
printf("\nThe smallest possible uncertainity in position of the electron = %6.4f angstrom", del_x/1e-010);

// Result
// The smallest possible uncertainity in position of the electron = 0.0019 angstrom 
