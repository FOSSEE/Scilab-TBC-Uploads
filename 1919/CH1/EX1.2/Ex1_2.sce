// Theory and Problems of Thermodynamics
// Chapter 1
// Basic Concepts
// Example 2

clear ;clc;

//Given data
m = 20      //m = mass of the piston in kg
A = 100      //A = cross-sectional area of piston in sq.cm
Pa = 101325 //Pa = atmospheric pressure in pa
g = 9.81      //g = gravity of earth in m/s^2

//Calculate pressure of the gas
A = A * 1e-6;       //units conversion cm^2 to m^2
P = Pa + m*g/A;     // Pressure calculation
P = P/10^6;         //units conversion Pa to MPa

// Results
mprintf('Pressure of the gas = %5.3f MPa', P)
