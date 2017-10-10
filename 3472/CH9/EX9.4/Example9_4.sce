// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.4 :
// Page number 101
clear ; clc ; close ; // Clear the work space and console

// Given data
l = 80.0            // Length of 3-phase transmission line(km)
D = 100.0           // Distance between conductors(cm)
d = 1.0             // Diameter of conductor(cm)

// Calculations
r_GMR = 0.7788*d/2.0                 // GMR of conductor(cm)
L = 2.0*10**-7*log(D/r_GMR)          // Inductance per phase(H/m)
L_l = L*l*1000.0                     // Inductance per phase for 80km(H)

// Results
disp("PART II - EXAMPLE : 2.4 : SOLUTION :-")
printf("\nInductance per phase of the system, L = %.4f H \n", L_l)
printf("\nNOTE: ERROR: Calculation mistake in textbook to find Inductance per phase of the system")
