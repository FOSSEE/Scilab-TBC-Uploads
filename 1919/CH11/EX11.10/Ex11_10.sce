
// Theory and Problems of Thermodynamics
// Chapter 11
// Kinetic Theory of Gases
// Example 10

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

lam = 1/(sig*n)             // mean free path

X1 = exp(-1.5/lam)          // fraction of free paths longer than 1.5m
X2 = 1- X1                  // fraction of free paths shorter than 1.5m
X3 = 1- exp(-2/lam)            // fraction of free paths shorter than 2m

r_f = X3 - X2               // fraction between 1.5 and 2 m

// output results
mprintf('(a) Fraction of free paths longer than 1.5 m = %4.4f ', X1)
mprintf('\n (b) Fraction of free paths longer than 1.5 m but shorter than 2 m = %4.4f ', r_f)
