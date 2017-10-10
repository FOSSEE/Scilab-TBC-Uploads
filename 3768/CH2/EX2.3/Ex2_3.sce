//Example number 2.3, Page number 32
clc;clear;
close;

// Variable declaration
N=6.02*10**26;           // Avagadro Number
n=2;
rho=530;    // density(kg/m**3)
M=6.94;    // atomic weight(amu)

// Calculation
a=(n*M/(rho*N))**(1/3)*10**10;    // lattice constant(angstrom)

// Result
printf( "lattice constant is %.3f Angstrom",a)
