//Example number 2.5, Page number 33
clc;clear;
close;

// Variable declaration
N=6.02*10**26;           // Avagadro Number
M=63.5;    // atomic weight(amu)
r=0.1278*10**-9;    // atomic radius(m)
n=4;

// Calculation
a=r*sqrt(8);    // lattice constant(m)
rho=n*M/(N*a**3);      // density(kg/m**3)

// Result
printf( "density is %.2f kg/m**3",rho)
//answer in the book is wrong
