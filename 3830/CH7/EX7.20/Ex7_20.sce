// Exa 7.20

clc;
clear;

// Given

// A Capacitence Transducer
A = 5*10^-4; // Area in m^2
C = 9.5*10^-12; // Capacitence in farad
er = 81; //  Relative dielectric constant
e0 = 8.854*10^-12; // Absolute dielectric constant in F/m

// Solution

// C = e0*er*A/d;
// Therefore
d = e0*er*A/C;
printf('The plate separation d = %.2f mm \n',d*10^3);
S = e0*er*A/d^2;

printf(' Sensitivity s = %.3f * 10^-8 F/m \n',S*10^8);
