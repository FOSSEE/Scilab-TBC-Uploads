// Scilab code Ex5.2: Pg.188 (2008)
clc; clear;
K_E = 10;    // Kinetic energy of electron, eV
h = 6.63e-034;    // Plank's constant, J-s
m = 9.11e-031;    // Masss of electron, kg
e = 1.6e-019;    // Charge of electron, C
// Since E_k = p^2/(2*m), solving for p, we get
p = sqrt(2*m*K_E*e);    // Momentum of electron, kg*m/s
lamda = h/p;    // De Broglie wavelength of an electron, m
printf("\nThe de-Broglie wavelength of the electron whose kinetic energy is %2d eV = %4.2f nm", K_E, lamda*1e+09);

// Result
// De Broglie wavelength of an electron whose kinetic energy = 0.39 nm