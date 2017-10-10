// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.1 :
// Page number 100
clear ; clc ; close ; // Clear the work space and console

// Given data
D = 100.0           // Distance between conductors(cm)
d = 1.25            // Diameter of conductor(cm)
f = 50.0            // Frequency(Hz)

// Calculations
r_GMR = 0.7788*d/2.0                 // GMR of conductor(cm)
L = 4.0*10**-4*log(D/r_GMR)          // Loop inductance(H/km)
X_L = 2*%pi*f*L                      // Reactance of transmission line(ohm)

// Results
disp("PART II - EXAMPLE : 2.1 : SOLUTION :-")
printf("\nLoop inductance of transmission line, L = %.2e H/km", L)
printf("\nReactance of transmission line, X_L = %.2f ohm", X_L)
