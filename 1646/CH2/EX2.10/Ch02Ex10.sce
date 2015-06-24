// Scilab Code Ex2.10: Page:83 (2011) 
clc;clear;
n = [1,2];....// Shell numbers for two lowest permitted energy of the electron 
m0 = 9.1e-31;....// Mass of the electron, kg
a = 2.5e-10;....// Width of the box, m
h = 6.63e-34;....// Planck's constant, J-s
e = 1.6e-19;....// Charge on electron, C
E = (n^2*h^2)/(8*m0*a^2*e);
printf("\nThe lowest two permitted energy values of an electron are");
printf(" %d eV and %d eV respectively", E(1), E(2));

// Result
// The lowest two permitted energy values of an electron are 6 eV and 24 eV respectively 
