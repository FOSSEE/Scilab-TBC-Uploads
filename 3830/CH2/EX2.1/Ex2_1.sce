// Exa 2.1

clc;
clear;

// Given
 
// A wien bridge oscillator under consideration
R = 55*10^3; // Resistance in Ohms
// R = R1 = R2  ... given
C = 800*10^-12; // Capacitor in Farad
// C = C2 = C1  .. given

// Solution

f = 1/(2*%pi*R*C) ;

printf(' The frequency of oscillations = %.1f Hz \n',f);
