// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 8: BRAKING

// EXAMPLE : 8.2 :
// Page number 806
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 525.0      // Voltage of motor(V)
I_1 = 50.0     // Current(A)
N_1 = 1200.0   // Speed(rpm)
I_2 = 100.0    // Current(A)
N_2 = 950.0    // Speed(rpm)
I_3 = 150.0    // Current(A)
N_3 = 840.0    // Speed(rpm)
I_4 = 200.0    // Current(A)
N_4 = 745.0    // Speed(rpm)
N = 1000.0     // Speed opearting(rpm)
R = 3.0        // Resistance(ohm)
R_m = 0.5      // Resistance of motor(ohm)

// Calculations
I = 85.0                // Current drawn at 1000 rpm(A)
back_emf = V-I*R_m      // Back emf of the motor(V)
R_t = R+R_m             // Total resistance(ohm)
I_del = back_emf/R_t    // Current delivered(A)

// Results
disp("PART IV - EXAMPLE : 8.2 : SOLUTION :-")
printf("\nCurrent delivered when motor works as generator = %.f A", I_del)
