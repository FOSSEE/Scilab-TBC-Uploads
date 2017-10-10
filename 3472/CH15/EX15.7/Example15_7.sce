// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 8: CORONA

// EXAMPLE : 8.7 :
// Page number 229-230
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 3.0             // Diameter of conductor(cm)
e_r = 4.0           // Relative permittivity
d_1 = 3.5           // Internal diameter of porcelain bushing(cm)
d_2 = 9.0           // External diameter of porcelain bushing(cm)
V = 25.0            // Voltage b/w conductor and clamp(kV)

// Calculations
r = d/2.0                                                     // Radius of conductor(cm)
r_1 = d_1/2.0                                                 // Internal radius of porcelain bushing(cm)
r_2 = d_2/2.0                                                 // External radius of porcelain bushing(cm)
g_2max = r/(e_r*r_1)                                          // Maximum gradient of inner side of porcelain
g_1max = V/(r*log(r_1/r)+g_2max*r_1*log(r_2/r_1))             // Maximum gradient on surface of conductor(kV/cm)

// Results
disp("PART II - EXAMPLE : 8.7 : SOLUTION :-")
printf("\nMaximum gradient on surface of conductor, g_1max = %.2f kV/cm", g_1max)
printf("\nSince, gradient exceeds 21.1 kV/cm, corona will be present")
