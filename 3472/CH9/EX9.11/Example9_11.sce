// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.11 :
// Page number 109
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 3.0                   // Diameter of conductor(cm)
D_12 = 200.0              // Distance between conductor 1 & 2(cm)
D_23 = 200.0              // Distance between conductor 2 & 3(cm)
D_31 = 400.0              // Distance between conductor 1 & 3(cm)

// Calculations
D_eq = (D_12*D_23*D_31)**(1.0/3)              // Equivalent distance(cm)
r = d/2.0                                     // Radius of conductor(cm)
L = (0.5+2*log(D_eq/r))*10**-7                // Inductance/phase/m(H)
L_mH = L*1000.0*1000.0                        // Inductance per phase per km(mH)

// Results
disp("PART II - EXAMPLE : 2.11 : SOLUTION :-")
printf("\nInductance of each conductor per phase per km, L = %.3f mH \n", L_mH)
printf("\nNOTE: ERROR: Calculation mistake in the textbook")
