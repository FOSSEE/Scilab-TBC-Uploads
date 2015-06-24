// Scilab code Ex5.3: Pg.196-197 (2008)
clc; clear;
E_k = 150;    // Kinetic energy of a cosmic ray proton, GeV
h = 6.63e-034;    // Plank's constant, J-s
m = 1.67e-027;    // Mass of proton, kg
c = 3e+08;    // Velocity of light, m/s
E_0 = 0.938;    // Rest energy of the proton, GeV
lamda_c = h/(m*c);    // Compton wavelength of proton, m
r = E_k/E_0;    // Ratio of kinetic energy to rest energy of proton
// Since this value on the curve corresponds to about 6e-03 on the axis, therefore
r_w = 6e-03;    // Ratio of de broglie wavelength of proton to its compton wavelength
lamda = r_w*lamda_c;    // de Broglie wavelength of the proton, m
printf("\nThe de-Broglie wavelength of cosmic ray proton = %3.1e m = %3.1e fm",lamda, lamda*1e+15);

// Result
// The de-Broglie wavelength of cosmic ray proton = 7.9e-018 m = 7.9e-003 fm 