// Ex2_1 Page:28 (2014)
clc; clear;
h = 6.626e-034; // Planck's constant, Js
nu = 100e+06;   // Operational frequency of the source, Hz
P = 100e+03;    // Power radiated by the source, W
E = h*nu;   // Energy radiated by the source, J
n = P/E;    // Number of quanta of energy per second
printf("\nThe number of photons emitted per second = %5.3e photons/s", n);

// Result
// The number of photons emitted per second = 1.509e+30 photons/s 
