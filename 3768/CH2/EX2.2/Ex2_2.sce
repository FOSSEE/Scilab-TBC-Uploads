//Example number 2.2, Page number 32

clc;clear;
close;
// Variable declaration
N=6.02*10**23;           // Avagadro Number
n=2;
rho=7860;    // density(kg/m**3)
M=55.85;    // atomic weight(amu)

// Calculation
a=(n*M/(rho*N))**(1/3)*10**8;    // lattice constant(angstrom)

// Result
printf( "lattice constant is %.4f Angstrom",a)
