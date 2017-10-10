// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.7 :
// Page number 214
clear ; clc ; close ; // Clear the work space and console

// Given data
R_3 = 1.00            // Cable radius(cm)
R_1 = 2.5             // Cable radius(cm)

// Calculations
R_2 = (R_1*R_3)**0.5      // Location of intersheath(cm)
alpha = R_1/R_2           // α
ratio = 2.0/(1+alpha)     // Ratio of maximum electric field strength with & without intersheath

// Results
disp("PART II - EXAMPLE : 7.7 : SOLUTION :-")
printf("\nLocation of intersheath, R_2 = %.2f cm", R_2)
printf("\nRatio of maximum electric field strength with & without intersheath = %.3f ", ratio)
