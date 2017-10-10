// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.13 :
// Page number 689
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 250.0      // Voltage of DC shunt motor(V)
N_1 = 400.0    // No load speed(rpm)
R_a = 0.5      // Armature resistance(ohm)
N_2 = 200.0    // Speed with additional resistance(rpm)
I_a = 20.0     // Armature current(A)

// Calculations
k_phi = (V-I_a*R_a)/N_1    // kΦ
R = (V-k_phi*N_2)/I_a      // Resistance(ohm)
R_add = R-R_a              // Additional resistance to be placed in armature circuit(ohm)

// Results
disp("PART IV - EXAMPLE : 1.13 : SOLUTION :-")
printf("\nResistance to be placed in the armature circuit = %.f ohm\n", R_add)
printf("\nNOTE: ERROR: The given data doesnt match with example 1.7 as mentioned in problem statement")
