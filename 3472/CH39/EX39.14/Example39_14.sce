// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.14 :
// Page number 689
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 400.0       // Voltage of DC shunt motor(V)
hp = 20.0       // Power of DC shunt motor(hp)
I = 44.0        // Current drawn by motor(A)
N_1 = 1000.0    // Speed(rpm)
N_2 = 800.0     // Speed with additional resistance(rpm)
R_sh = 200.0    // Shunt field resistance(ohm)

// Calculations
output = hp*746            // Motor output(W)
I_f1 = V/R_sh              // Shunt field current(A)
I_a1 = I-I_f1              // Armature current(A)
E_b1 = output/I_a1         // Back emf(V)
R_a = (V-E_b1)/I_a1        // Armature resistance(ohm)
I_a2 = I_a1*(N_2/N_1)**2   // Armature current at N2(A)
E_b2 = N_2/N_1*E_b1        // Back emf at N2(V)
r = ((V-E_b2)/I_a2)-R_a    // Resistance connected in series with armature(ohm)

// Results
disp("PART IV - EXAMPLE : 1.14 : SOLUTION :-")
printf("\nResistance to be connected in series with armature to reduce speed, r = %.2f ohm", r)
