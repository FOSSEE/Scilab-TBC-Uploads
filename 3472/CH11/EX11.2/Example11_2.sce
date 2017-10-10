// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 4: OVERHEAD LINE INSULATORS

// EXAMPLE : 4.2 :
// Page number 183-184
clear ; clc ; close ; // Clear the work space and console

// Given data
m = 10.0              // Mutual capacitance of top insulator in terms of C

// Calculations
X = 1+m                  // Mutual capacitance in terms of C
Y = (1.0+2)+m            // Mutual capacitance in terms of C
Z = (1.0+2+3)+m          // Mutual capacitance in terms of C
U = (1.0+2+3+4)+m        // Mutual capacitance in terms of C
V = (1.0+2+3+4+5)+m      // Mutual capacitance in terms of C

// Results
disp("PART II - EXAMPLE : 4.2 : SOLUTION :-")
printf("\nMutual capacitance of each unit:")
printf("\n X = %.f*C", X)
printf("\n Y = %.f*C", Y)
printf("\n Z = %.f*C", Z)
printf("\n U = %.f*C", U)
printf("\n V = %.f*C", V)
