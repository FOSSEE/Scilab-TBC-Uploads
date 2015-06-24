// Theory and Problems of Thermodynamics
// Chapter 3
// Thermodynamic Properties of Fluids
// Example 4

clear ;clc;

//Given data
N = 1000         // Number of moles of Methane
T = 300         // Temperature of methane in K
Pc = 4.6        // Critical pressure constant of Methane in MPa
Tc = 190.6      // critical Temperature constant of Methane in K
V = 3.866       // volume in cubic meter
R = 8.314       // Gas constant


Tr = T/Tc       // Residual Temperature

// Pressure is calculated using the below formulation
//P = Pr*Pc       
// Compressibility factor is calculated from the below equation
//Z = P*V/(N*R*T) 
//Z = Pr*Pc*V/(N*R*T) 
// P is function of Pr, relation between Pr and Z can be interpreted fron compressibility chart
// determine the slope of with which Z varies with Pr

Z_slope = Pc*V/(N*R*T) // the slope with which Z is varies with Pr

Pr = 1.7        //the point at which the Z_slope intersects
P = Pr*Pc         

// Output Results
mprintf('Pressure calculated from generalized compresibility chart = %4.2f MPa' ,P)

