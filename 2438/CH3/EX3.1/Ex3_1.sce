// Chapter 3 example 1
clc;
clear;

// Variable declaration
r   = 0.53*10^-10;          // orbit radius m
n   = 6.6*10^15;            // frequency of revolution of electronHz
e   = 1.6*10^-19           // charge of electron in coulombs
h   = 6.63*10^-34;          // plancks constant in J.s
m   = 9.1*10^-31;           // mass of electron in kg

// Calculations
i   = e*n                     // current produced due to electron
A   = %pi*r*r                 // Area in m^2
u   = i*A;                    // magnetic moment A*m^2
ub  = (e*h)/(4*%pi*m)         // Bohr magneton in J/T

// Output
mprintf('Magnetic moment = %3.3e Am^2\n Bohr magneton = %3.2e J/T',u,ub);
