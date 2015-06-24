// Chapter 3 example 7
clc;
clear;

// Variable declaration
xm      = -4.2*10^-6;           // magnetic susceptibility in A.m^-1
H       = 1.15*10^5;            // magnetic field in A.m^-1

// Calculations
uo      = 4*%pi*10^-7;          // magnetic permeability  N·A^-2
M       = xm*H                  // magnetisation in A.m^-1
B       = uo*(H + M)            // flux density in T
ur      = 1+(M/H)               // relative permeability 

// Output
mprintf('Magnetisation = %3.2f A/m\n flux density = %g Tesla\n relative permeability = %g',M,B,ur);
