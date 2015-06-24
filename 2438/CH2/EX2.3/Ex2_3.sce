// Chapter 2 example 3
clc;
clear;

// Variable declaration
h   = 6.63*10^-34;          // plancks constant in J.s
m   = 9.1*10^-31;           // mass of electron in kg
a   = 5*10^-10;             // width of infinite potential well in m
e   = 1.6*10^-19;            // charge of electron in coulombs
n1  = 1;                      // energy level constant
n2  = 2;                      // energy level constant
n3  = 3;                      // energy level constant

// Calculations
E1  = ((n1^2)*(h^2))/(8*m*(a^2)*e);      // first energy level in eV
E2  = ((n2^2)*(h^2))/(8*m*(a^2)*e);     // second energy level in eV
E3  = ((n3^2)*(h^2))/(8*m*(a^2)*e);     // third energy level in eV

// Result
mprintf('First Three Energy levels are \n E1 = %3.2f eV\n E2 = %3.2f eV\n E3 = %3.2f eV',E1,E2,E3);
mprintf('\n Above calculation shows that the energy of the bound electron cannot be continuous')
