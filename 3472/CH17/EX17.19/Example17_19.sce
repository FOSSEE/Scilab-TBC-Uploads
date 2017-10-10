// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.19 :
// Page number 305
clear ; clc ; close ; // Clear the work space and console

// Given data
P_accl = 30.0         // Acceleration power(MVA)
M = 0.474             // Angular momentum(MJ-sec/elect.degree). From Example 10.18

// Calculations
acceleration = P_accl/M      // Acceleration of the rotor(elect.degree/sec^2)

// Results
disp("PART II - EXAMPLE : 10.19 : SOLUTION :-")
printf("\nAcceleration of the rotor = %.2f elect.degree/sec^2", acceleration)
