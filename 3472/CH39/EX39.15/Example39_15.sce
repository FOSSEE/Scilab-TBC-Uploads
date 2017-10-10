// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.15 :
// Page number 690
clear ; clc ; close ; // Clear the work space and console

// Given data
hp = 15.0         // Power of DC shunt motor(hp)
V = 400.0         // Voltage of DC shunt motor(V)
N_reduce = 20.0   // Speed is to be reduced by(%)
I_f = 3.0         // Field current(A)
R_a = 0.5         // Armature resistance(ohm)
n = 0.85          // Efficiency of motor

// Calculations
motor_input = hp*746/n          // Motor input(W)
I = motor_input/V               // Motor current(A)
I_a1 = I-I_f                    // Armature current(A)
I_a2 = I_a1                     // Armature current at new speed(A)
E_b1 = V-I_a1*R_a               // Back emf(V)
E_b2 = E_b1*(100-N_reduce)/100  // Back emf at new speed(V)
r = ((V-E_b2)/I_a2)-R_a         // Ohmic value of resistor connected in the armature circuit(ohm)

// Results
disp("PART IV - EXAMPLE : 1.15 : SOLUTION :-")
printf("\nOhmic value of resistor connected in the armature circuit, r = %.2f ohm", r)
