// Ex14_1 Page:272 (2014)
clc;clear;
mu_0 = 4*%pi*1e-007;    // Absolute magnetic permeability of free space, N/Sq.A
r = 2e-003;    // Radius of tin wire, m
T = 2;    // Temperature of tin wire, K
T_c = 3.722;    // Critical temperature of tin, K
B_c0 = 0.0305;    // Critical field at 0 K, T
B_cT = B_c0*(1-(T/T_c)^2);    // Critical field at T K, T
I_c = 2*%pi*r*B_cT/mu_0;    // Critical current through the tin wire from Ampere's Law, A
printf("\nThe critical current through the tin wire = %5.1f A", I_c);

// Result
// The critical current through the tin wire = 216.9 A 