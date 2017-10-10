// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.3 :
// Page number 101
clear ; clc ; close ; // Clear the work space and console

// Given data
D = 135.0           // Spacing between conductors(cm)
r = 0.8             // Radius of conductor(cm)

// Calculations
L = (1+4*log(D/r))*10**-7*1000.0          // Loop inductance per km(H)
L_mH = L*1000.0                           // Loop inductance per km(mH)

// Results
disp("PART II - EXAMPLE : 2.3 : SOLUTION :-")
printf("\nLoop inductance of line per km, L = %.2f mH", L_mH)
