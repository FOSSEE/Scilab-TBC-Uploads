
// Theory and Problems of Thermodynamics
// Chapter 4
// Energy Analysis of Process
// Example 7

clear ;clc;

//Given data
gam = 1.4            // ideal gas constant gamma
T1 = 700             // entering Temperature in K
P1 = 0.5             // Entering steam Pressure in MPa  
P2 = 0.1             // leaving steam Pressure in MPa  
R = 8.314            // gas constant 

// Calculation
C_p = R*gam/(gam-1)         // Specific heat in J/molK

// Exit velocity of gas
V2 = sqrt(2*C_p*T1*(1-(P2/P1)^((gam-1)/gam)))

// Output Results
mprintf('Exit velocity of gas = %6.1f m/s',V2)






