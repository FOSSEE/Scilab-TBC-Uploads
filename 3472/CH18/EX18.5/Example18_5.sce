// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 11: LOAD FREQUENCY CONTROL AND LOAD SHARING OF POWER GENERATING SOURCES

// EXAMPLE : 11.5 :
// Page number 333
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 10000.0            // Voltage(V)
rating = 10000.0       // Full load rating(kW)
V_drop_per = 0.2       // Voltage drop of 20% for 10000 kW

// Calculations
V_drop = V_drop_per*rating                    // Voltage drop(V)
sin_theta_2 = (V_drop/2)/V                    // Sin(θ/2)
theta_2 = asind(sin_theta_2)                  // θ/2(°)
theta = 2.0*theta_2                           // Phase angle between busbar sections, θ(°)

// Results
disp("PART II - EXAMPLE : 11.5 : SOLUTION :-")
printf("\nPhase angle between busbar sections, θ = %.2f° \n", theta)
printf("\nNOTE: ERROR: Calculation mistakes in the textbook solution")
