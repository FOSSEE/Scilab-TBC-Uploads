// Exa 1.36

clc;
clear;

// Given

f1 = 1*10^6; // first resonant frequency in Hz
C1 = 480*10^-12; // Capacitor value at f1 in Farad
f2 = 2*10^6; // second resonant frequency in Hz
C2 = 120*10^-12; // Capacitor value at f2 in Farad
R = 10; // Resistance in Ohms

// Solution

Cd = (C1-4*C2)/3;  // Distributive capacitor
Q = 1/((2*%pi*f1)*R*(C1+Cd));

printf('The value of Cd and Q of the coil are %.1f pf and %.2f respectively',Cd*10^12,Q);

//The answer provided in the textbook cannot be confirmed(The formulae for Cd mentions L2 variable whose value is not given in problem statement)
