// Given:-
// State 1
m = 0.9                               // mass of air in kg
T1 = 300.0                            // initial temperature in kelvin
P1 = 1.0                              // initial pressure in bar

// State 2
T2 = 470.0                            // final temperature in kelvin
P2 = 6.0                              // final pressure in bar
Q = -20.0                             // heat transfer in kj

// From table A-22 
u1 = 214.07                           // in KJ/kg
u2 = 337.32                           // in KJ/Kg

// Calculations
deltaU = m*(u2-u1)                    // change in internal energy in kj
W = Q - deltaU                        // in KJ/kg

// Results

printf( ' The work during the process is %f KJ.',W);
