
// Theory and Problems of Thermodynamics
// Chapter 11
// Kinetic Theory of Gases
// Example 2
clear ;clc;

//Given data
P = 0.1                // pressure of helium surface exposed in MPa
T = 300                // temperature of helium surface exposed in K
R = 8.314              // gas constant
M = 4*1e-3             // molecular weight of helium
k = 1.3804*1e-23       // boltzmann constant

// Calculations
V = (8*R*T/(%pi*M))^0.5         // average velocity of gas molecule
n = P*1e6/(k*T)                 // number of mlucules per m^3
num_col = 1/4*n*V               // number of collisions per m^2 per second

// output results
mprintf('number of collisions per m^2 per second = %4.4f E+27', num_col*1e-27)
