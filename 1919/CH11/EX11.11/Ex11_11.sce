
// Theory and Problems of Thermodynamics
// Chapter 11
// Kinetic Theory of Gases
// Example 11

clear ;clc;

//Given data
T = 273                 // temperature of oxygen in K
vis =19.2               // viscosity of oxygen 
R = 8.314               // gas constant
N0 = 6.023*1e23         // number of atoms per mole
M = 32*1e-3             // molar mass of oxygen in kg/mol

// Calculations
V = (8*R*T/(%pi*M))^0.5         // average velocity of gas molecule

sig = M*V/(N0*vis*(1e-6)*3*(2^0.5))

//sig = 4*%pi*r1^2
r1 = (sig/(4*%pi))^0.5

// output results
mprintf('Hard sphere radius of oxygen molecule = %4.2f nm', r1*1e9)
