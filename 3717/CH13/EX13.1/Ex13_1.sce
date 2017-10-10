// Ex13_1 Page:256 (2014)
clc;clear;
H = 1.2e+05;    // Magnetic field in silicon, A/m
chi = -4.2e-006;    // Magnetic susceptibility
mu_0 = 4*%pi*1e-007;    // Magnetic permeability, T-m/A
M = chi*H;    // Magnetization of Si, A/m
B = mu_0 *(H + M);    // Magnetic flux density in Si, T
mu_r = M/H + 1;    // Relative permeability of the material
printf("\nThe magnetization of Si = %5.3f A/m", M);
printf("\nThe magnetic flux density in Si = %5.3f T", B);
printf("\nThe relative permeability of the material = %f", mu_r);

// Result
// The magnetization of Si = -0.504 A/m
// The magnetic flux density in Si = 0.151 T
// The relative permeability of the material = 0.999996 