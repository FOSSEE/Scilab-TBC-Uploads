// Scilab code Ex1.13:  Pg:37 (2008)
clc;clear;
Lambda = 1e-010;    // Wavelength of X-rays, m
c = 3e+08;    // Velocity of light, m/s
h = 6.625e-034;    // Planck's constant, joule-sec
e = 1.6e-019;    // Charge of electron, coulomb
E = h*c/Lambda;    // Energy of X-rays, cycles/sec
// Since h*c/Lambda = e*V, solving for V
V = E/e;    // voltage applied to an X-ray tube, volts
printf("\nThe minimum voltage applied to an X-ray tube to produce X-rays = %5.2e volt", V);

// Result 
// The minimum voltage applied to an X-ray tube to produce X-rays = 1.24e+004 volt