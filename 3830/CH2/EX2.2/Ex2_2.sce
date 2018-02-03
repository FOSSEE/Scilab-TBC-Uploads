// Exa 2.2

clc;
clear;

// Given

// A wien bridge oscillator under consideration

fo= 10^6 ; // frequency of oscillations in Hz

// Solution

printf(' Let R = 3 k Ohms \n');

R = 3000; // Ohm's
// since, fo = 1/(2*%pi*R*C); therefore,
C = 1/(2*%pi*fo*R);

printf('  Substituting that, the value of capacitor = %d pf \n',C*10^12);
