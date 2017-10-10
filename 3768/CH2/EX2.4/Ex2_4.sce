//Example number 2.4, Page number 32

clc;clear;
close;

// Variable declaration
N=6.02*10**26;           // Avagadro Number
rho=7870;    // density(kg/m**3)
M=55.85;    // atomic weight(amu)
a=2.9*10**-10;    // lattice constant(m)

// Calculation
n=a**3*rho*N/M;      // number of atoms

// Result
printf( "number of atoms is %d",n)
