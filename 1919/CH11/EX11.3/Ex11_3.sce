
// Theory and Problems of Thermodynamics
// Chapter 11
// Kinetic Theory of Gases
// Example 3
clear ;clc;

//Given data
r = 0.18                // radius of oxygen molecule in nm
P = 0.1                 // pressure of oxygen in MPa
T = 300                 // temperature of oxygen in K
R = 8.314               // gas constant
N = 6.023*1e23          // number of atoms per mole

// Calculations
v_m = R*T/(P*1e6)                     // volume occupied by one mole of gas
V_M = N*(4/3)*%pi*((r*1e-9)^3)        // volume occupied by oxygen molecules

V = v_m/N                       // volume available for one molecule
deff('y=radius(r)', 'y = V - (4/3)*%pi*r^3') 
r = fsolve(0.001,radius)           // radius of sphere in a molecule

d = 2*r                         // average distance between 2 molecules

V_E = 4*V_M                     // excluded volume for molecular motion


// output results
mprintf('(a) volume occupied by one mole of gas = %4.4f cubic m/mol', v_m)
mprintf('\n (b) volume occupied by oxygen molecules = %4.4f E-05 cubic m', V_M *1e5)
mprintf('\n (c) average distance between 2 molecules = %4.2f nm', d*1e9)
mprintf('\n (d) excluded volume for molecular motion = %4.4f E-05 cubic m', V_E*1e5)
