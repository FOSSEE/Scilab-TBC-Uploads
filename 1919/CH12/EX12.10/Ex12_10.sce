
// Theory and Problems of Thermodynamics
// Chapter 12
// Statistical Thermodynamics
// Example 10
clear ;clc;

//Given data
T = 300                     // Temperature of ammonia gas in K
M = 17*1e-3                 // molar mass of ammonia in kg/mol
R = 8.314                   // gas constant

// Calculations
V = (8*R*T/%pi/M)^0.5       // average speed of ammonia
V_rms = (3*R*T/M)^0.5       // root mean square speed of ammonia
V_mp = (2*R*T/M)^0.5        // most probable speed of ammonia


// Output results
mprintf('Average speed of ammonia = %4.1f m/s', V)
mprintf('\n Root mean square speed of ammonia = %4.1f m/s', V_rms)
mprintf('\n Most probable speed of ammonia = %4.1f m/s', V_mp)
