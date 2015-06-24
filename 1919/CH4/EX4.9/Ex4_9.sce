
// Theory and Problems of Thermodynamics
// Chapter 4
// Energy Analysis of Process
// Example 9

clear ;clc;

//Given data
T_cal = 110             // Calorimeter Temperature in C
P_cal = 0.1             // Calorimeter Pressure in MPa  
P = 0.5                 // Pressure wet steam in MPa  

// from superheated steam tables at P = 0.1 MPa and T = 110
h2 = 2696.24         // obtained from interpolation units kJ/kg
// from saturated steam tables at P = 0.5 MPa  
h_f = 640.23        // units kJ/kg
h_fg = 2108.5        // units kJ/kg

// Calculation
h1 = h2                 // isenthalpic process
X = (h1 - h_f)/h_fg     // quality of wet steam


// Output Results
mprintf('Quality of wet steam = %6.3f',X)






