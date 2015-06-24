// Chapter 3 example 3
clc;
clear;

// Variable declaration
ur  = 90;           // relative permeability
n   = 300;            // turns per m
i   = 0.5;           // current in amp
d   = 10*10^-3;      // diameter of iron rod
l   = 2;             // length of iron rod

// Calculations
V   = %pi*(d/2)^2 * l      // volume of rod
M   = (ur - 1)*n*i          // magnetisation
m   = M*V                   // magnetic moment

// Output
mprintf('Magnetic Moment of the rod = %3.3g A-m^2\n ',m);
mprintf('Note: In textbook length of iron rod given as 2m whereas in calculation it is wrongly taken as 0.2m' )
