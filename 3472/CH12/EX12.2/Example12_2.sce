// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 5: MECHANICAL DESIGN OF OVERHEAD LINES

// EXAMPLE : 5.2 :
// Page number 198
clear ; clc ; close ; // Clear the work space and console

// Given data
L = 250.0             // Span length(m)
h = 10.0              // Difference in height(m)
r = 1.0               // Radius of conductor(cm)
w = 2.5               // Weight of conductor(kg/m)
wind = 1.2            // Wind load(kg/m)
s = 3.0               // Factor of safety
tensile = 4300.0      // Maximum tensile strength(kg/sq.cm)

// Calculations
W = (w**2+wind**2)**0.5       // Total pressure on conductor(kg/m)
f = tensile/s                 // Permissible stress in conductor(kg/sq.cm)   
a = %pi*r**2                  // Area of the conductor(sq.cm)
T = f*a                       // Allowable max tension(kg)
x = (L/2)-(T*h/(L*W))         // Point of maximum sag at the lower support(m)

// Results
disp("PART II - EXAMPLE : 5.2 : SOLUTION :-")
printf("\nPoint of maximum sag at the lower support, x = %.2f metres", x)
