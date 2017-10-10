// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.26 :
// Page number 120
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 2.0                // Spacing between conductors(m)
dia = 1.25/100         // Diameter of conductor(m)

// Calculations
r = dia/2                           // Radius of conductor(m)
e = 8.854*10**-12                   // Constant ε_0
C = 2*%pi*e/log(d/r)                // Capacitance(F/m)
C_u = C*1000*10.0**6                // Capacitance for entire length(μF/km)

// Results
disp("PART II - EXAMPLE : 2.26 : SOLUTION :-")
printf("\nCapacitance of each line conductor, C = %.4f μF/km", C_u)
