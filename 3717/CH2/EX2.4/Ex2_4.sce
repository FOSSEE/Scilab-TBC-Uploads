// Ex2_4 Page:33 (2014)
clc; clear;
h = 6.626e-034; // Planck's constant, Js
c = 3e+08;  // Speed of light, m/s
lambda = 0.2e-09;   // Wavelength of photon, m
p = h/lambda;   // Momentum of the photon, kgm/s
m = p/c;    // Effective mass of photon, kg
printf("\nThe momentum of the photon = %3.1e kg-m/s", p);
printf("\nThe effective mass of photon = %3.1e kg", m);

// Result
// The momentum of the photon = 3.3e-24 kg-m/s
// The effective mass of photon = 1.1e-32 kg 

