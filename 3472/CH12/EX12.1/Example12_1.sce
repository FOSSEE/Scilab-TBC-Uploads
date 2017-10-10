// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 5: MECHANICAL DESIGN OF OVERHEAD LINES

// EXAMPLE : 5.1 :
// Page number 198
clear ; clc ; close ; // Clear the work space and console

// Given data
u = 5758.0       // Ultimate strength(kg)
S = 2.0          // Sag(m)
s = 2.0          // Factor of safety
L = 250.0        // Span length(m)

// Calculations
T = u/s                                // Allowable max tension(kg)
w = S*8.0*T/L**2                       // weight(kg/m)
l = L/2                                // Half span length(m)
half_span = l+(w**2*l**3/(6*T**2))     // Half span length(m)
total_length = 2*half_span             // Total length(m)
weight = w*total_length                // Weight of conductor(kg)

// Results
disp("PART II - EXAMPLE : 5.1 : SOLUTION :-")
printf("\nWeight of conductor = %.2f kg", weight)
