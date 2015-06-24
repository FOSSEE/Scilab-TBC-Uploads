// Scilab Code Ex6.1: Page-369 (2011) 
clc;clear;
i = 2e-003;....// Current through X-ray tube, A
e = 1.6e-019;....// Charge on an electron, C
V = 12.4e+003;....// Potential difference applied across X-ray tube, V 
m0 = 9.1e-031;....// Rest mass of the electron, Kg 
n = i/e;    // Number of electrons striking the target per second
printf("\nThe number of electrons striking the target per sec = %4.2e electrons", n);
v = sqrt(2*e*V/m0);....// Velocity of the electrons, m/s
printf("\nThe speed with which electrons strike the target = %4.2e m/s", v);

// Result
// The number of electrons striking the target per sec = 1.25e+016 electrons
// The speed with which electrons strike the target = 6.60e+007 m/s 