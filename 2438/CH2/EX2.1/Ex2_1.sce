// Chapter 2 example 1

clc;
clear;

// Variable declaration
h   = 6.63*10^-34;          // plancks constant in J.s
m   = 9.1*10^-31;           // mass of electron in kg
a   = 2.5*10^-10;           // width of infinite square well
e   = 1.6*10^-19;           // charge of electron coulombs
n2  = 2;                    //number of  permiissable quantum
n3  = 3;                    //number of  permiissable quantum

// Calculations
E1  = (h^2)/(8*m*a^2*e);      // first lowest permissable quantum energy  in eV
E2  = n2^2 *E1;              // second lowest permissable quantum energy in eV
E3  = n3^2 *E1;              // second lowest permissable quantum energy in eV

// Result
mprintf('Lowest three permissable quantum energies are \n E1 = %d eV\n E2 = %d eV\n E3 = %d eV',E1,E2,E3);

