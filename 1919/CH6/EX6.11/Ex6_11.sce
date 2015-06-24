
// Theory and Problems of Thermodynamics
// Chapter 6
// Thermodynamic Potentials and Availability
// Example 11

clear ;clc;

//Given data
P1 = 1               // ideal gas pressure in MPa
T0 = 300             // ideal gas temperature
N = 1e3             // number of moles of ideal gas
P2 = 0.1            // pressure of gas afte expansion in MPa
R = 8.314           // gas constant

// System is interactiing with the ambient atmosphere
// the initial and final temperatures are identical to ambient temperature.
//W_max = T0*(s2-s1)
W_max = -R*N*T0*log(P2/P1)/1e6        // work obtained from gas in MJ


// Output Results
mprintf('The maximum work obtained from the gas = %4.4f MJ' ,W_max);
