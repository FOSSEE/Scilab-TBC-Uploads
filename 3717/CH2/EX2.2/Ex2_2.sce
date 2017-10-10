// Ex2_2 Page:31 (2014)
clc; clear;
h = 6.626e-034; // Planck's constant, Js
c = 3e+08;  // Speed of light, m/s
e = 1.6e-019;   // Energy equivalent of 1 eV, J
m = 9.1e-031;   // Mass of an electron, kg
w0 = 2.28;  // Work function of sodium, eV
lambda = 400e-09;   // Wavelength of light, m
nu = c/lambda;    // Frequency of light, Hz
KE_max = h*nu/e - w0;  // Maximum kinetic energy of photoelectrons, eV
v = sqrt(2*KE_max*e/m);   // Speed of photoelectrons, m/s
printf("\nThe maximum kinetic energy of photoelectrons = %5.3f eV", KE_max);
printf("\nThe speed of photoelectrons = %4.2e m/s", v);

// Result
// The maximum kinetic energy of photoelectrons = 0.826 eV
// The speed of photoelectrons = 5.39e+05 m/s 

