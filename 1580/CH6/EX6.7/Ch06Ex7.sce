// Scilab Code Ex 6.7: Page-6.17 (2004)
clc;clear;
h = 6.62e-34;    // Planck's const, Js
m = 9.1e-31;    // Mass of electron in kg
L = 1e-9;     //  length of cube box , m
n1 = 1;         //   nx box quantum number
n2 = 1;         //   ny box lowest quantum number
n3 = 2;         //   nz box quantum number
k = 1.38e-23;       //  Boltzmann constant, joule per kelvin
e = 1.6e-19;    // Charge on electron, C
E = (h^2)/(8*m*L^2)*((n1)^2+(n2)^2+(n3)^2);   //Lowest Energy level for electron confinement , in joule
T = 2*E/(3*k);    // Equivalent temperature of the molecules, kelvin

printf("\nEnergy for electron confinement = %5.3e joule", E);
printf("\nEquivalent temperature of the molecules = %5.3e kelvin", T);

// Results
//  Energy for electron confinement = 3.61e-19 joule
// Equivalent temperature of the molecules = 1.74e+04 kelvin 
