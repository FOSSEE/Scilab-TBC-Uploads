// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.2 :
// Page number 101
clear ; clc ; close ; // Clear the work space and console

// Given data
l = 100.0           // Length of 3-phase transmission line(km)
D = 120.0           // Distance between conductors(cm)
d = 0.5             // Diameter of conductor(cm)

// Calculations
r_GMR = 0.7788*d/2.0                 // GMR of conductor(cm)
L = 2.0*10**-4*log(D/r_GMR)          // Inductance per phase(H/km)
L_l = L*l                            // Inductance per phase for 100km length(H)

// Results
disp("PART II - EXAMPLE : 2.2 : SOLUTION :-")
printf("\nInductance per phase of the system, L = %.4f H \n", L_l)
printf("\nNOTE: ERROR: In textbook to calculate L, log10 is used instead of ln i.e natural logarithm. So, there is change in answer")
