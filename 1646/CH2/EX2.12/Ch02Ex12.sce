// Scilab Code Ex2.12: Page:83 (2011)
clc;clear;
m0 = 9.1e-31;....// Rest mass, kg
a = 1e-10;....// Length of the box, m
h = 6.62e-34;....// Planck's constat, J-s
n1 = 1;....// Ground state
n2 = 2;....// First excited state
e = 1.6e-19;....// Charge on electron, C
E1 = (n1^2*h^2)/(8*m0*a^2*e);
E2 = (n2^2*h^2)/(8*m0*a^2*e);
del_E = E2-E1; 
printf("\nThe energy difference between the ground state and the first excited state = %5.1f eV",del_E);

//Result
// The energy difference between the ground state and the first excited state = 112.9 eV 
