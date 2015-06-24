
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 10

clear ;clc;

//Given data
r0 = 8                // Compression ratio of Otto cycle
T1 = 300              // initial temperature of air in K
P1 = 0.1              // initial pressure of air in MPa
q1 = 25               // amount of energy added during combustion cycle
gam = 1.4             // heat  capacity ratio

// calculations 
n = 1-(1/r0)^(gam-1)    // Thermal efficiency of cycle
W = n*q1                // work done per mole of air

// Output Results
mprintf('Thermal efficiency of Otto cycle = %4.3f' ,n);
mprintf('\n Work done per mole of air = %4.3f kJ/mol' ,W);
