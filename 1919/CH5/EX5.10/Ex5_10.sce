
// Theory and Problems of Thermodynamics
// Chapter 5
// Second law of Thermodynamics
// Example 10

clear ;clc;

//Given data
T1 = 1000                   // absorbing temperature of reservoir 1 in K
T2 = 300                    // absorbing temperature of reservoir 2 in K
T3 = 600                    // rejecting temperature of reservoir 3 in K

Q1 = 1500                   // energy absorbed from reservoir 1 in kJ
Q2 = 150                    // energy absorbed from reservoir 2 in kJ
Q3 = 600                    // energy rejected to reservoir 3 in kJ

W = 1050                    // work delivered from heat engine in kJ

// Calculations
// First law of thermodynamics gives dQ = dW
dQ = Q1 + Q2 - Q3           // total energy
// dQ = W                   // work done is equal to energy available
// Hence the first law of the thermodynamics is satisfied

// Clausius inequality gives dQ/T <= 0
dQ_T = Q1/T1 + Q2/T2 - Q3/T3        // dQ_T = dQ/T

mprintf('The second law of thermodynamics is violated in the form of Clausius inequality. \n Hence this engine is theoretically impossible')
