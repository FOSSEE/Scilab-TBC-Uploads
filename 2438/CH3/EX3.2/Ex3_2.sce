// Chapter 3 example 2
clc;
clear;

// Variable declaration
ur  = 1150;           // relative permeability
n   = 500;            // turns per m
V   = 10^-3;         // volume of iron rod in m^3
i   = 0.5;           // current in amp

// Calculations
// B = uo(H+M)
// B = uH, u/uo = ur
// M = (ur - 1)H
// if current is flowing through a solenoid having n turns/l then H = ni
 M = (ur - 1)*n*i      // magnetisation
 m = M*V;            // magnetic moment
 
 // Output
 mprintf('Magnetic moment = %3.2e A-m^2',m);
 mprintf('\n Note: Instead of 2.87*10^2, 2.87*10^-2 is printed in textbook');
