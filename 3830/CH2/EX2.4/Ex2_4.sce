// Exa 2.4

clc;
clear;

// Given

// Transistor Colpitts oscillator
L = 100*10^-3; // Inductance(H)
C1 = 0.005*10^-6; // Capacitor(F)
C2 = 0.01*10^-6; // Capacitor(F)

// Solution

C = C1*C2/(C1+C2);
printf(' By calculation, C = %.2f pf \n',C*10^12);
fo = 1/(2*%pi*sqrt(L*C));

printf('  The frequency of oscillator = %.1f kHz \n',fo*10^-3);

// The answer provided in the textbook is wrong
