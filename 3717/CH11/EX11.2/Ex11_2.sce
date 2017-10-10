// Ex11_2 Page:238 (2014)
clc;clear;
h = 6.626e-034;    // Planck's constant, Js
N = 6.02e+026;    // Avogadro's number, per k-mol 
k = 1.38e-023;    // Boltzmann constant, J/K
T = 10;    // Temperature of Lead, K
theta_D = 105;    // Debye temperature of lead, K
C = 12/5*3.14^4*N*k*(T/theta_D)^3;    // Specific heat of Pb from Debye T-cube law, J/K/k-mol
printf("\nThe specific heat of Pb = %6.1f J/K/k-mol", C);
nu_D = k*theta_D/h;    // The highest possible frequency for Cu, per sec
printf("\nThe highest frequency for lead = %5.2fe+011 per sec", nu_D/1e+011);

// Result
// The specific heat of Pb = 1674.3 J/K/k-mol
// The highest frequency for lead = 21.87e+011 per sec
// The answers vary due to round off error
