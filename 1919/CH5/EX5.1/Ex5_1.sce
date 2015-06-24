
// Theory and Problems of Thermodynamics
// Chapter 5
// Second law of Thermodynamics
// Example 1

clear ;clc;

//Given data
Q = 100                     // energy absorbed in kJ
W = 50                      // work done in kJ

// Calculations 
U2_1 = Q - W                // U2_1 = U2 - U1

// if it is to be restored to state 1 through an adiabatic process, then
del_U = - U2_1              // U2_1 = - (U1 - U2)

net_W = U2_1 + del_U        // in kJ

mprintf('According to the second law of thermodynamics, \n The system cannot be restored to its original state by adiabatic process')
