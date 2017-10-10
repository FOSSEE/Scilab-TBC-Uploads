// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.19 :
// Page number 701
clear ; clc ; close ; // Clear the work space and console

// Given data
T = 312.5         // Load torque(N-m)
N = 500.0         // Speed limit(rpm)
R_total = 1.0     // Total resistance of armature & field(ohm)

// Calculations
input_load = 2*%pi*N*T/60          // Input from load(W)
E = 345.0                          // Voltage from magnetization curve(V). From Fig E1.5 page no 701
I = 47.5                           // Current from magnetization curve(A). From Fig E1.5 page no 701
R = E/I                            // Resistance(ohm)
R_add = R-R_total                  // Additional resistance required(ohm)

// Results
disp("PART IV - EXAMPLE : 1.19 : SOLUTION :-")
printf("\nValue of resistance to be connected in motor circuit = %.2f ohm", R_add)
