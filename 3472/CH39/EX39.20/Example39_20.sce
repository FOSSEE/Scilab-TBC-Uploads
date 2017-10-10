// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.20 :
// Page number 702
clear ; clc ; close ; // Clear the work space and console
funcprot(0)

// Given data
V = 500.0         // Shunt motor voltage(V)
load = 400.0      // Hoist load(kg)
speed = 2.5       // Hoist raised speed(m/sec)
n_motor = 0.85    // Efficiency of motor
n_hoist = 0.75    // Efficiency of hoist

// Calculations
P_output = load*speed*9.81                     // Power output from motor(W)
P_input = P_output/(n_motor*n_hoist)           // Motor input(W)
I = P_input/V                                  // Current drawn from supply(A)
output_G = load*speed*9.81*n_motor*n_hoist     // Generator output(W)
R = V**2/output_G                              // Resistance required in the armature circuit for rheostatic braking(ohm)

// Results
disp("PART IV - EXAMPLE : 1.20 : SOLUTION :-")
printf("\nCurrent drawn by the motor from supply = %.1f A", I)
printf("\nResistance required in the armature circuit for rheostatic braking, R = %.f ohm", R)
