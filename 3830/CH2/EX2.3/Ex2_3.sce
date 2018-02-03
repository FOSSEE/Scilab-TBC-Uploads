// Exa 2.3

clc;
clear;

// Given

// A phase shift oscillator

R = 800*10^3; // in Ohm's
// R = R1 = R2 = R3  .. given
C = 100*10^-12; // in Farad
// C = C1 = C2 = C3  .. farad

// Solution

fo = 1/(2*%pi*R*C*sqrt(6));

printf(' The frequency of oscillations = %d Hz \n',fo);
