// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 5: MECHANICAL DESIGN OF OVERHEAD LINES

// EXAMPLE : 5.3 :
// Page number 198-199
clear ; clc ; close ; // Clear the work space and console

// Given data
a = 2.5             // Cross-sectional area(sq.cm)
L = 250.0           // Span(m)
w_c = 1.8           // Weight of conductor(kg/m)
u = 8000.0          // Ultimate strength(kg/cm^2)
wind = 40.0         // Wind load(kg/cm^2)
s = 3.0             // Factor of safety

// Calculations
d = (4.0*a/%pi)**0.5           // Diameter(cm)
T = u*a/s                      // Allowable max tension(kg)
w_w = wind*d/100.0             // Horizontal wind force(kg)
w_r = (w_c**2+w_w**2)**0.5     // Resultant force(kg/m)
S = w_r*L**2/(8*T)             // Slant sag(m)
vertical_sag = S*(w_c/w_r)     // Vertical sag(m)

// Results
disp("PART II - EXAMPLE : 5.3 : SOLUTION :-")
printf("\nVertical sag = %.3f metres", vertical_sag)
