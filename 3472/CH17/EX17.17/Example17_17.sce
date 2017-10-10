// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.17 :
// Page number 305
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA_1 = 500.0        // Rating of generator(MVA)
H_1 = 4.0            // Inertia constant(MJ/VA)
MVA_2 = 1000.0       // Rating of generator(MVA)
H_2 = 3.5            // Inertia constant(MJ/VA)
MVA = 100.0          // Base MVA

// Calculations
KE_T = H_1*MVA_1+H_2*MVA_2     // Total KE of the system(MJ)
H_total = KE_T/MVA             // Equivalent H for the two to common 100MVA base(MJ/MVA)

// Results
disp("PART II - EXAMPLE : 10.17 : SOLUTION :-")
printf("\nEquivalent H for the two to common 100 MVA base, H = %.f MJ/MVA", H_total)
