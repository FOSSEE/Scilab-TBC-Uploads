// Scilab code Exa5.10 : : Page 206 (2011)
clc; clear;
h_kt = 1.05457e-34;        // Reduced Planck's constant, joule sec
e = 1.60218e-19;        // Charge of an electron, coulomb
l = 2;                // Orbital angular momentum
eps_0 = 8.5542e-12;        // Absolute permittivity of free space, coulomb square per newton per metre square
Z_D = 90;            // Atomic number of daughter nucleus
m = 6.644e-27;        // Mass of alpha particle, Kg
R = 8.627e-15;        // Radius of daughter nucleus, metre
T1_by_T0 = exp(2*l*(l+1)*h_kt/e*sqrt(%pi*eps_0/(Z_D*m*R)));    // Hindrance factor
printf("\nThe hindrance factor for alpha particle = %5.3f" ,T1_by_T0);

// Result
// The hindrance factor for alpha particle = 1.768 