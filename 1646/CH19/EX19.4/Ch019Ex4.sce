// Scilab Code Ex19.4: Page-960 (2011)
clc; clear;
T_c = 7.18;    // Critical temperature of lead in superconducting state, K
H_c0 = 6.5e+004;    // Critical field for lead at 0 K, A/m
// At T = 4.2 K
T = 4.2;       // Temperature at which critical field of lead is to be found out, K
H_cT = H_c0*(1-(T/T_c)^2);    // Critical field for lead at 4 K, A/m
d = 1e-003;    // Diameter of lead wire, m
r = d/2;       // Radius of lead wire, m
I_c = 2*3.14*r*H_cT;    // Critical current through superconducting lead wire, A
J_c = I_c/(3.14*r^2);    // Critical current density for superconducting lead wire, A/Sq. meter
printf("\nThe critical current density at %3.1f K = %5.3e A/Sq.m", T, J_c);
// At T = 7 K
T = 7;       // Temperature at which critical field of lead is to be found out, K
H_cT = H_c0*(1-(T/T_c)^2);    // Critical field for lead at 4 K, A/m
d = 1e-003;    // Diameter of lead wire, m
r = d/2;       // Radius of lead wire, m
I_c = 2*3.14*r*H_cT;    // Critical current through superconducting lead wire, A
J_c = I_c/(3.14*r^2);    // Critical current density for superconducting lead wire, A/Sq. meter
printf("\nThe critical current density at %3.1f K = %4.2e A/Sq.m", T, J_c);

// Result 
// The critical current density at 4.2 K = 1.710e+008 A/Sq.m
// The critical current density at 7.0 K = 1.29e+007 A/Sq.m 
