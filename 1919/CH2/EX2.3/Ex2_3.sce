// Theory and Problems of Thermodynamics
// Chapter 2
// First Law of Thermodynamics
// Example 3

clear ;clc;

//Given data
T1 = 300        // initial temperature in K
P1 = 100        // initial pressure in kPa
I = 3           // current in amperes
V = 200         // voltage in volts
t = 60          // time period for flow through resistor in s
r = 1.4;        // CP/CV
R = 8.314       // gas constant in J/K

// determine work done by the gas and temperature
// U2-U1 = Q-W = Q-(integrate('P','V') - W_e) = W_e-(integrate('P','V'))
// W = I * V * t - P*(V2-V1) = I * V * t - R*(T2-T1)

W_e = I * V * t     // electrical work done on system
T2 = T1 + W_e * (r-1)/(R * r);  // final temperature
W = R * (T2 - T1);     // work done by gas
W = W/1000;            // units conversion J to kJ 

// Results
mprintf('Final temperature = %5.2f K', T2)
mprintf('\n Work done by the gas = %5.3f kJ', W)



