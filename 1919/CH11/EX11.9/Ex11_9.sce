
// Theory and Problems of Thermodynamics
// Chapter 11
// Kinetic Theory of Gases
// Example 9
clear ;clc;

//Given data
r1 = 0.18               // radius of oxygen molecule in nm
P = 0.01                // pressure of oxygen in MPa
T = 500                 // temperature of oxygen in K
R = 8.314               // gas constant
N0 = 6.023*1e23         // number of atoms per mole
M = 32*1e-3             // molar mass of oxygen in kg/mol

// Calculations
sig = 4*%pi*((r1*1e-9)^2)   // collision cross section

n = P*N0/(R*T)              // molecules per m^3

V = (8*R*T/%pi/M)^0.5       // average speed of oxygen

Z = sig*n*V                 // collision frequency

lam = 1/(sig*n)             // mean free path

// output results
mprintf('collision cross section for oxygen = %4.4f E-18 square m', sig*1e18)
mprintf('\n collision frequency for oxygen = %4.0f collisions/s', Z)
mprintf('\n mean free path for oxygen = %4.3f m', lam)
