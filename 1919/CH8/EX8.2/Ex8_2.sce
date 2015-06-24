
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 2

clear ;clc;

//Given data
P1 = 10                 // pressure of saturated water to be pumped in kPa
P2 = 3                  // boiler pressure is maintained in MPa
n_p = 0.85              // isentropic efficency of pump

// Steam at 10 kPa
vf = 0.001010           // in m^3/kg

W_i = vf*(P2*1e3-P1)    // work done by isentropic pump

W_P = W_i/n_p           // work done by actual pump

// Output Results
mprintf('Work done by actual pump = %4.2f kJ/kg' ,W_P);

