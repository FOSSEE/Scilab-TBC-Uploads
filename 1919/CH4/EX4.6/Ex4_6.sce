
// Theory and Problems of Thermodynamics
// Chapter 4
// Energy Analysis of Process
// Example 6

clear ;clc;

//Given data
m_f = 1              // mass flow rate in mol/s
gam = 1.4            // ideal gas constant gamma
P1 = 0.1             // Entering steam Pressure in MPa  
T1 = 300             // entering Temperature in K
T2 = 750             // leaving Temperature in K
R = 8.314            // gas constant 

// The first law of thermodynamics for the steady-state flow process when 
// change in KE and PE are ignored reduces to

W_s = m_f * R* gam*(T2-T1)/(gam-1)  // Power consumed by the compressor
W_s = W_s*1e-3                      // units conversion W to kW


// Output Results
mprintf('Power consumed by the compressor = %6.3f kW',W_s)






