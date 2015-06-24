// Scilab Code Ex3.12:Page-139 (2011) 
clc;clear;
m = 9.1e-31;....// mass of electron, kg
h = 6.62e-34;....// Planck's constant, J-s
V = 108/10.5*1e-06;....// Volume of 1 gm mole of silver, metre-cube
N = 6.023e+023;    // Avogadro's number
E_F = h^2/(2*m)*(3*N/(8*%pi*V))^(2/3);    // Fermi energy at absolute zero, J
printf("\nThe fermi energy of the silver at absolute zero = %4.2e J",E_F);  

// Result
// The fermi energy of the silver at absolute zero = 8.80e-019 J 
