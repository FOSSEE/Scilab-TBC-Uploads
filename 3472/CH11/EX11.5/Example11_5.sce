// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 4: OVERHEAD LINE INSULATORS

// EXAMPLE : 4.5 :
// Page number 185
clear ; clc ; close ; // Clear the work space and console

// Given data
n = 8.0               // Number of insulators

// Calculations
A = 1.0/(n-1)         // Line to pin capacitance
B = 2.0/(n-2)         // Line to pin capacitance
C = 3.0/(n-3)         // Line to pin capacitance
D = 4.0/(n-4)         // Line to pin capacitance
E = 5.0/(n-5)         // Line to pin capacitance
F = 6.0/(n-6)         // Line to pin capacitance
G = 7.0/(n-7)         // Line to pin capacitance

// Results
disp("PART II - EXAMPLE : 4.5 : SOLUTION :-")
printf("\nLine-to-pin capacitance are:")
printf("\n A = %.3f*C", A)
printf("\n B = %.3f*C", B)
printf("\n C = %.3f*C", C)
printf("\n D = %.3f*C", D)
printf("\n E = %.3f*C", E)
printf("\n F = %.3f*C", F)
printf("\n G = %.3f*C", G)
