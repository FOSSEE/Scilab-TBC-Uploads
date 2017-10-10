// Ex12_3 Page:245 (2014)
clc; clear;
tau = 1e-015;  // Average collision time of an electron, s
a = 4e-010; // Lattice parameter of cubic structure, m
n = 1;  // Number of electrons atoms per unit cell
e = 1.6e-019;   // Charge on an electron, C
m = 9.1e-031;   // Mass of an electron, kg
N = n/a^3;  // Number of electrons per unit volume, per metre-cube
sigma = N*e^2*tau/m;  // Conductivity of copper, mho/m
rho = 1/sigma; // Resistivity of copper, ohm-m
printf("\nThe conductivity of copper = %4.2e mho/m", sigma);
printf("\nThe resistivity of copper = %4.2e ohm-m", rho);

// Result
// The conductivity of copper = 4.40e+05 mho/m
// The resistivity of copper = 2.28e-06 ohm-m 
