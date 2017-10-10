// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 5: MECHANICAL DESIGN OF OVERHEAD LINES

// EXAMPLE : 5.4 :
// Page number 199
clear ; clc ; close ; // Clear the work space and console

// Given data
a = 110.0               // Cross-sectional area(sq.mm)
w_c = 844.0/1000        // Weight of conductor(kg/m)
U = 7950.0              // Ultimate strength(kg)
L = 300.0               // Span(m)
s = 2.0                 // Factor of safety
wind = 75.0             // Wind pressure(kg/m^2)
h = 7.0                 // Ground clearance(m)
d = 2.79                // Diameter of copper(mm)
n = 7.0                 // Number of strands

// Calculations
dia = n*d                        // Diameter of conductor(mm)
w_w = wind*dia/1000.0            // Horizontal wind force(kg)
w = (w_c**2+w_w**2)**0.5         // Resultant force(kg)
T = U/2.0                        // Allowable tension(m)
l = L/2.0                        // Half-span(m)
D = w*l**2/(2*T)                 // Distance(m)
height = h+D                     // Height above ground at which the conductors should be supported(m)

// Results
disp("PART II - EXAMPLE : 5.4 : SOLUTION :-")
printf("\nHeight above ground at which the conductors should be supported = %.2f metres", height)
