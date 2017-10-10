// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.16 :
// Page number 697-698
clear ; clc ; close ; // Clear the work space and console

// Given data
p = 6.0           // Number of poles
f = 50.0          // Frequency(Hz)
R_2 = 0.3         // Rotor resistance per phase(ohm)
N_1 = 960.0       // Rotor speed(rpm)
N_2 = 800.0       // New rotor speed with external resistance(rpm)

// Calculations
N_s = 120*f/p           // Synchronous speed(rpm)
S_1 = (N_s-N_1)/N_s     // Slip at full load
S_2 = (N_s-N_2)/N_s     // New slip
R = (S_2/S_1*R_2)-R_2   // External resistance per phase added in rotor circuit to reduce speed(ohm)

// Results
disp("PART IV - EXAMPLE : 1.16 : SOLUTION :-")
printf("\nExternal resistance per phase added in rotor circuit to reduce speed, R = %.1f ohm", R)
