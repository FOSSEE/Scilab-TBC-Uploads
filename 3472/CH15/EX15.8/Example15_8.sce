// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 8: CORONA

// EXAMPLE : 8.8 :
// Page number 230
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 2.0             // Diameter of conductor(cm)
D = 150.0           // Spacing b/w conductor(cm)
delta = 1.0         // Air density factor

// Calculations
r = d/2.0                           // Radius of conductor(cm)
V_d = 21.1*delta*r*log(D/r)         // Disruptive critical voltage(kV/phase)
V_d_ll = 3**0.5*V_d                 // Line voltage for commencing of corona(kV)

// Results
disp("PART II - EXAMPLE : 8.8 : SOLUTION :-")
printf("\nLine voltage for commencing of corona = %.2f kV \n", V_d_ll)
printf("\nNOTE: Solution is incomplete in textbook")
