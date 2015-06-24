// Scilab Code Ex3.14: Electron density in lithium at absolute zero: Page:140 (2011) 
clc;clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
m = 9.1e-31;....// Mass of the elecron, kg 
h = 6.63e-34;    // Planck's constant, Js
EF = 4.72*e;....// Fermi energy of free electrons in Li, J
rho = 8*%pi/3*(2*m*EF/h^2)^(3/2);    // Electron density at absolute zero, electrons/metre-cube
printf("\nThe electron density in lithium at absolute zero = %4.2e electrons/metre-cube", rho);

// Result
// The electron density in lithium at absolute zero = 4.63e+028 electrons/metre-cube 