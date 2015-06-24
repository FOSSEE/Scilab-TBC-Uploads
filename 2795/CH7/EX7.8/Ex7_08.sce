// Scilab Code Ex7.8: Page-257 (2014)
clc; clear;
m = 1.67e-027;    // Mass of the proton, kg
k = 1.38e-023;    // Boltzmann constant, J/K
T = 663;    // Temperature of the discharge tube, K
v_x = sqrt(3*k*T/m);    // Average speed of the hydrogen atom
mu_z = 9.27e-024;    // Bohr's magneton, J/T
B_grad = 1240;    // Magnetic field gradient, T/m
delta_x = 0.03;    // Length of the homogeneous magnetic field, m
d = 1/(2*m)*(mu_z*B_grad)*(delta_x/v_x)^2;    // Separation of the atomic beam, m
printf("\nThe separation of the atomic beam = %4.2f mm", d/1e-003);

// Result
// The separation of the atomic beam = 0.19 mm 