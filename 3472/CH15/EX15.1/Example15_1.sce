// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 8: CORONA

// EXAMPLE : 8.1 :
// Page number 227
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 30.0/10          // Diameter of conductor(cm)
delta = 0.95         // Air density factor
m = 0.95             // Irregularity factor
E = 230.0            // Line voltage(kV)
g_0 = 30.0/2**0.5    // Breakdown strength of air(kV/cm)

// Calculations
E_0 = E/3**0.5                             // Disruptive critical voltage(kV)
r = d/2.0                                  // Radius of conductor(cm)
D = exp(E_0/(m*delta*g_0*r))*r/100         // Minimum spacing between conductors(m)

// Results
disp("PART II - EXAMPLE : 8.1 : SOLUTION :-")
printf("\nMinimum spacing between conductors, D = %.3f m \n", abs(D))
printf("\nNOTE: Changes in obtained answer from that of textbook due to precision")
