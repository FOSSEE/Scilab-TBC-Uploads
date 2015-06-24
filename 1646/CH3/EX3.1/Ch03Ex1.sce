// Scilab Code Ex3.1: Page:132 (2011) 
clc;clear;
m = 5.32e-26;   // Mass of one oxygen molecule, kg
k_B = 1.38e-23;  // Boltzmann constant, J/K
T = 200;    // Temperature of the system, K
v = 100;    // Speed of the oxygen molecules, m/s
dv = 1;     // Increase in speed of the oxygen molecules, m/s
P = 4*%pi*(m/(2*%pi*k_B*T))^(3/2)*exp(-m*v^2/(2*k_B*T))*v^2*dv;
printf("\nThe probability that the speed of oxygen molecule is %4.2e", P) ;

// Result
// The probability that the speed of oxygen molecule is 6.13e-04 
