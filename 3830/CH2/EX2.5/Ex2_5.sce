// Exa 2.5

clc;
clear;

// Given

// A Hartley oscillator under consideration
L1 = 100*10^-3; // Inductance(H)
L2 = 1*10^-3; // Inductance(H)
M = 50*10^-3; // Inductance(H)
C = 100*10^-12; // Capacitor(F)

// Solution

L = L1+L2+2*M;
printf(' By calculation, L = %d H \n',L*10^3);

f = 1/(2*%pi*sqrt(L*C));

printf('  The frequency of oscillation = %d kHz \n',f*10^-3);

// The answer provided in the textbook is wrong
