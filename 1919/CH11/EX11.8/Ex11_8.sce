
// Theory and Problems of Thermodynamics
// Chapter 11
// Kinetic Theory of Gases
// Example 8
clear ;clc;

//Given data
R = 8.314                       // Gas constant

// u = 5*(0.5*R*T)              // Energy of molecule

// h = u+Pv = 5/2*R*T + RT = 7/2*R*T     

 Cv = 5/2*R

 Cp = 7/2*R
 
 gam = Cp/Cv
 
 
 // output results
 mprintf('The ratio of the molar heat capacity of CO2 = %1.1f', gam)
