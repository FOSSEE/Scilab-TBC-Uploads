
// Theory and Problems of Thermodynamics
// Chapter 6
// Thermodynamic Potentials and Availability
// Example 9

clear ;clc;

//Given data
gam = 1.4           // specific heat ratio
P = 1               // pressure in MPa
T1 = 1000           // Temperature before adibatic expansion in K
T2 = 300            // Temperature after adibatic expansion in K
R = 8.314           // universal gas constant

W = R*(T1-T2)/(gam-1)/1e3       // work obtained during adiabatic process in MJ

// Output Results
mprintf('Work obtained during an adiabatic process = %4.2f MJ' ,W);
