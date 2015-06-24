// Scilab Code Ex 5.10 : Page-5.24 (2004)
clc;clear;
h = 6.626e-34; // Planck's const, Js
m = 9.1e-31;    // Mass of electron, kg
L = 4e-10; //  Side of the box, m
n1 = 1; //   nx box lowest quantum number
E = (h^2)/(8*m*(L^2))*((n1)^2);   //Lowest Energy level for electron confinement , in eV
printf("\nMinimum Energy = %2.3e joule", E);

// Results
// Minimum Energy  = 3.769e-19 joule
