// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.10 :
// Page number 109
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 5.0                  // Diameter of conductor(cm)
d_1 = 400.0              // Distance between conductor 1 & 2(cm)
d_2 = 500.0              // Distance between conductor 2 & 3(cm)
d_3 = 600.0              // Distance between conductor 1 & 3(cm)

// Calculations
D_eq = (d_1*d_2*d_3)**(1.0/3)                     // Equivalent distance(cm)
r_GMR = 0.7788*d/2.0                              // GMR(cm)
L = 0.2*log(D_eq/r_GMR)                           // Inductance per phase per km(mH)

// Results
disp("PART II - EXAMPLE : 2.10 : SOLUTION :-")
printf("\nInductance per km of 3 phase transmission line, L = %.3f mH \n", L)
printf("\nNOTE: ERROR: Calculation mistake in the textbook")
