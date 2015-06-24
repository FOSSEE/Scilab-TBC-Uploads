
// Theory and Problems of Thermodynamics
// Chapter 11
// Kinetic Theory of Gases
// Example 4
clear ;clc;

//Given data
T = 1000                    // Temperature of nitrogen gas in K
M = 28*1e-3                 // molar mass of nitrogen in kg/mol
R = 8.314                   // gas constant

// Calculations
V = (8*R*T/%pi/M)^0.5       // average speed of nitrogen
V_rms = (3*R*T/M)^0.5       // root mean square speed of nitrogen
V_mp = (2*R*T/M)^0.5        // most probable speed of nitrogen


// Output results
mprintf('Average speed of nitrogen = %4.2f m/s', V)
mprintf('\n Root mean square speed of nitrogen = %4.2f m/s', V_rms)
mprintf('\n Most probable speed of nitrogen = %4.2f m/s', V_mp)
