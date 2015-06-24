// Scilab Code Ex12.17: Page-463(2014)
clc; clear;
u = 931.5;    // Energy equivalent of 1 u, MeV
E_ex = 0.072;    // Energy of the excited state, MeV
M = 226*u*1e;    // Energy equivalent of atomic mass of Th-226, MeV
x = E_ex/(2*M);    // The error introduced in the gamma ray energy by approximation
printf("\nThe error introduced in the gamma ray energy by approximation = %3.1e", x);

// Result
// The error introduced in the gamma ray energy by approximation = 1.7e-007 