// Scilab Code Ex6.15: Page-229 (2014)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
c = 3.00e+008;    // Speed of light, m/s
e = 1.602e-019;    // Energy equivalent of 1 eV, J
m = 0.511e+006;    // Energy equivalent of electron rest mass, eV
V0 = 10;    // Height of potential barrier, eV
Sum_M = 0;
i = 1;
for E = 5:-1:1    // Range of energies of the incident electrons, eV
    M = 16*E/V0*(1-E/V0);    // All the factors multiplying the exponential term
    Sum_M = Sum_M + M;    // Accumulator
    i = i + 1;
end
E = 5;    // Given energy of the incident electrons, eV
M = int(Sum_M/i);    // Avearge value of M
L = 0.8e-009;    // Width of the potential barrier, m
k = sqrt(2*m*(V0 - E))*e/(h_bar*c);    // Schrodinger's constant, per m
T = M*exp(-2*k*L);    // Transmission electron probability
printf("\nThe fraction of electrons tunneled through the barrier = %3.1e", T);

// Result
// The fraction of electrons tunneled through the barrier = 2.2e-008 