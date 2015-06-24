// Scilab Code Ex 5.8 : Page-5.22 (2004)
clc;clear;
h = 6.62e-34; // Planck's constant, Js
m = 9.1e-31;    // Mass of electron, kg
L = 0.1e-9; //  Side of the box, m
n1 = 1; //   nx box lowest quantum number
n2 = 1; //   ny box lowest quantum number
n3 = 2; //   nz box lowest quantum number
e = 1.6e-19;    // Charge on electron, C
E = (h^2)/(8*e*m*L^2)*((n1)^2+(n2)^2+(n3)^2);   //Lowest Energy level for electron confinement , in eV

printf("\nLowest Energy level for electron confinement = %6.2f eV", E);

// Result
// Lowest Energy level for electron confinement = 225.74 eV 
