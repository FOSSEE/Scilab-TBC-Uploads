// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.11 :
// Page number 303
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0        // Frequency(Hz)
G = 100.0       // Rating of generator(MVA)
H = 5.0         // Inertia constant(MJ/MVA)
P_a = 20.0      // Acceleration power(MVA)

// Calculations
GH = G*H                // Energy stored in rotor at synchronous speed(MJ)
M = GH/(180*f)          // Angular momentum
acceleration = P_a/M    // Acceleration(°/sec^2)

// Results
disp("PART II - EXAMPLE : 10.11 : SOLUTION :-")
printf("\nKinetic energy stored in the rotor at synchronous speed, GH = %.f MJ", GH)
printf("\nAcceleration = %.f°/sec^2", acceleration)
