// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.9 :
// Page number 108-109
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 1.8                  // Diameter of conductor(cm)
D_A_B = 4.0              // Distance between conductor A & B(cm)
D_B_C = 9.0              // Distance between conductor B & C(cm)
D_A_C = 6.0              // Distance between conductor A & C(cm)

// Calculations
D_eq = (D_A_B*D_B_C*D_A_C)**(1.0/3)      // Equivalent distance(cm)
r_GMR = 0.7788*d/2.0                     // GMR(cm)
L = 2*10**-4*log(D_eq/r_GMR)             // Inductance per phase(H/km)
L_mH = L*1000.0                          // Inductance per phase(mH/km)

// Results
disp("PART II - EXAMPLE : 2.9 : SOLUTION :-")
printf("\nInductance of the line per phase, L = %.3f mH/km \n", L_mH)
printf("\nNOTE: ERROR: Calculation mistake in the textbook")
