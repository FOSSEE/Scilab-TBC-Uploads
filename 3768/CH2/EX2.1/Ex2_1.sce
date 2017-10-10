//Example number 2.1, Page number 31

clc;clear;
close;

// Variable declaration
N=6.02*10**26;           // Avagadro Number
n=8;    // number of atoms
a=5.6*10**-10;    // lattice constant(m)
M=72.59;     // atomic weight(amu)

// Calculation
rho=n*M/(a**3*N);     // density(kg/m**3)

// Result
printf( "density is %.3f kg/m^3",rho)
