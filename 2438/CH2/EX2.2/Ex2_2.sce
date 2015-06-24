// Chapter 2 example 2

clc;
clear;

// Variable declaration
 h   = 6.63*10^-34;          // plancks constant in J.s
 m   = 9.1*10^-31;           // mass of electron in kg
 a   = 10^-10;           // width of infinite square well in m
 e   = 1.6*10^-19;           // charge of electron in coulombs
 n1  = 1;                     //energy level constant
 n2  = 2;                       //energy level constant

// calculations
 E1  = ((n1^2)*(h^2))/(8*m*(a^2)*e);      // ground state energy in eV
 E2  = ((n2^2)*(h^2))/(8*m*(a^2)*e);     // first excited state in energy in eV
 dE  = E2-E1                      // difference between first excited and ground state(E2 - E1)

// Result
 mprintf('Energy Difference = %3.2f eV',dE);

 
