// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.10 :
// Page number 687
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 220.0       // DC shunt motor voltage(V)
I_a1 = 50.0     // Armature current at 800rpm(A)
N_1 = 800.0     // Speed of dc shunt motor(rpm)
N_2 = 1000.0    // Speed of dc shunt motor with additional resistance(rpm)
I_a2 = 75.0     // Armature current with additional resistance(A)
R_a = 0.15      // Armature resistance(ohm)
R_f = 250.0     // Field resistance(ohm)

// Calculations
E_b1 = V-R_a*I_a1                 // Back emf at 800 rpm(V)
I_f1 = V/R_f                      // Shunt field current(A)
E_b2 = V-R_a*I_a2                 // Back emf at 1000 rpm(V)
I_f2 = E_b2*N_1*I_f1/(E_b1*N_2)   // Shunt field current at 1000 rpm(A)
R_f2 = V/I_f2                     // Field resistance at 1000 rpm(ohm)
R_add = R_f2-R_f                  // Additional resistance required(ohm)

// Results
disp("PART IV - EXAMPLE : 1.10 : SOLUTION :-")
printf("\nAdditional resistance to be inserted in the field circuit to raise the speed = %.1f ohm\n", R_add)
printf("\nNOTE: ERROR: Calculation mistake in E_b2 in the textbook solution")
