
// Theory and Problems of Thermodynamics
// Chapter 4
// Energy Analysis of Process
// Example 8

clear ;clc;

//Given data
T1 = 200             // entering Temperature in C
P1 = 0.5             // Entering steam Pressure in MPa  
P2 = 0.1             // leaving steam Pressure in MPa  
vel_1 = 1              // inlet velocity in m/s
m_f = 1              // mass flow rate
Q = -10              // Energy lost as heat in kJ/s
// from superheated steam tables at P = 0.5 MPa and T = 200 
h1 = 2855.4         // units kJ/kg
// from saturated steam tables at P = 0.1 MPa  
h2 = 2675.5        // units kJ/kg


// Calculation for Exit velocity of gas
V2 = sqrt(2*(Q+h1-h2)* 1e3 +1)

// Output Results
mprintf('Exit velocity of steam = %6.2f m/s',V2)






