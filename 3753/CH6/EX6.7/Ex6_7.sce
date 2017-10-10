//Example number 6.7, Page number 6.48

clc;clear;close

// variable declaration
d=2.351                 // bond length
N=6.02*10^26           // Avagadro number
n=8                     // number of atoms in unit cell
A=28.09                 // Atomin mass of silicon
m=6.02*10^26           // 1mole

// Calculations
a=(4*d)/sqrt(3) // in m
p=(n*A)/((a*10^-10)*m)    // density

// Result
printf("a=%.2f Angstorm",(a))
printf("\ndensity = %.2f kg/m^3",(p*10^16))
// Answer given in the textbook is wrong"
