// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.15 :
// Page number 111
clear ; clc ; close ; // Clear the work space and console

// Given data
D_eq = 2.88                     // Equilateral spacing of line(m)

// Calculations
D = D_eq/2**(1.0/3)             // Distance(m)
D_13 = 2.0*D                    // Distance between conductor 1 & 3(m)
D_12 = D                        // Distance between conductor 1 & 2(m)
D_23 = D                        // Distance between conductor 2 & 3(m)

// Results
disp("PART II - EXAMPLE : 2.15 : SOLUTION :-")
printf("\nSpacing between conductor 1 & 2 to keep inductance same, D_12 = %.1f m", D_12)
printf("\nSpacing between conductor 2 & 3 to keep inductance same, D_23 = %.1f m", D_23)
printf("\nSpacing between conductor 1 & 3 to keep inductance same, D_13 = %.1f m", D_13)
