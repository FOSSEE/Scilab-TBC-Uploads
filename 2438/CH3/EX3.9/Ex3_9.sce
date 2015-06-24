// Chapter 3 example 9
clc;
clear;

// Variable declaration
xm      = -0.2*10^-5;       // magnetic susceptability in A.m^-1
H       = 10^4;             // magnetic field in A/m


// Calculations
uo      = 4*%pi*10^-7;          // magnetic permeability
M       = xm*H              // magnetisation in A/m
B       = uo*(H+M);         // magnetic flux density in T

// Output
mprintf('magnetisation = %3.2f A/m\n Magnetic flux density = %3.4f T',M,B);


