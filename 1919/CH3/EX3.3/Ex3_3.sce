// Theory and Problems of Thermodynamics
// Chapter 3
// Thermodynamic Properties of Fluids
// Example 3

clear ;clc;

//Given data
N = 10000        // Number of moles of Methane
T = 300          // Temperature of methane in K
P = 6            // Pressure of Methane in Mpa
Pc = 4.6        // Critical pressure constant of Methane in MPa
Tc = 190.6      // critical Temperature constant of Methane in K
R = 8.314       // Gas constant


Pr = P/Pc       // Residual Pressure
Tr = T/Tc       // Residual Temperature

Z = 0.93        // From compressibility chart

P = P*1e6       // Units conversion from MPa to Pa

// for ideal gas
V = Z*N*R*T/P

mprintf('Volume calculated from generalized compresibility chart = %4.3f cubic meters' ,V)

