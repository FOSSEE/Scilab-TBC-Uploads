// Scilab Code Ex 5.7 : Lowest Energy for electron confinement: Page-5.22 (2004)
clc;clear;
h = 6.62e-34; // Planck's const, Js
m = 9.1e-31;    // Mass of electron in kg
L = 0.1e-9; //  Side of the box in m
n1 = 1; //   nx box lowest quantum number
n2 = 1; //   ny box lowest quantum number
n3 = 1; //   nz box lowest quantum number
e = 1.6e-19;    // Charge on electron in C
E = (h^2)/(8*e*m*L^2)*((n1)^2+(n2)^2+(n3)^2);   //Lowest Energy for electron confinement , in eV
printf("\nLowest Energy for electron confinement = %5.1f eV", E);


// Results
// Lowest Energy for electron confinement = 112.9 eV 
