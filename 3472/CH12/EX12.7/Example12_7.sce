// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 5: MECHANICAL DESIGN OF OVERHEAD LINES

// EXAMPLE : 5.7 :
// Page number 200
clear ; clc ; close ; // Clear the work space and console

// Given data
W = 428/1000.0      // Weight(kg/m)
u = 1973.0          // Breaking strength(kg)
s = 2.0             // Factor of safety
l = 200.0           // Span(m)
h = 3.0             // Difference in tower height(m)

// Calculations
T = u/s                               // Allowable maximum tension(kg)
x_2 = (l/2.0)+(T*h/(W*l))             // Point of minimum sag from tower at higher level(m)
x_1 = l-x_2                           // Point of minimum sag from tower at lower level(m)

// Results
disp("PART II - EXAMPLE : 5.7 : SOLUTION :-")
printf("\nPoint of minimum sag, x_1 = %.1f metres", x_1)
printf("\nPoint of minimum sag, x_2 = %.1f metres", x_2)
