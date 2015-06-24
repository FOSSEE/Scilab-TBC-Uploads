// Theory and Problems of Thermodynamics
// Chapter 2
// First Law of Thermodynamics
// Example 7

clear ;clc;

//Given data
T1 = 300          // initial temperature in K
P1 = 100          // initial pressure in kPa
P2 = 1.5          // initial pressure in MPa
r = 1.4           // r = CP/CV
n = 1.2           //P(V^1.2) = constant
R = 8.314         // gas constant in J/K

// determine work done and energy transferred as heat
P2 = P2 * 1000      // units conversion MPa to kPa
V_12 = (P2/P1)^(1/1.2)  //ratio of V1 and V2
T2 = P2 * T1 / (P1 * V_12)  // final temperature in K

W = R * (T1 - T2)/(n-1);       // work done on gas
W = W/1000;                    // units conversion J to kJ
Q = (R * (T1-T2)/(r-1))/1000 + W      // energy transferred as heat

// Results
mprintf('Work done on gas = %5.4f kJ', W)
mprintf('\n Energy transfered as heat = %5.3f kJ', Q)
