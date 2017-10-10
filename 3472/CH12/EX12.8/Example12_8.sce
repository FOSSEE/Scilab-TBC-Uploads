// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 5: MECHANICAL DESIGN OF OVERHEAD LINES

// EXAMPLE : 5.8 :
// Page number 200-201
clear ; clc ; close ; // Clear the work space and console

// Given data
h_1 = 50.0          // Height of tower P1(m)
h_2 = 80.0          // Height of tower P2(m)
L = 300.0           // Horizontal distance b/w towers(m)
T = 2000.0          // Tension in conductor(kg)
w = 0.844           // Weight of conductor(kg/m)

// Calculations
h = h_2-h_1                           // Difference in height of tower(m)
x_2 = (L/2.0)+(T*h/(w*L))             // Point of minimum sag from tower P2(m)
x_1 = (L/2.0)-(T*h/(w*L))             // Point of minimum sag from tower at lower level(m)
P = (L/2.0)-x_1                       // Distance of point P(m)
D = w*P**2/(2*T)                      // Height of P above O(m)
D_2 = w*x_2**2/(2*T)                  // Height of P2 above O(m)
mid_point_P2 = D_2-D                  // Mid-point below P2(m)
clearance = h_2-mid_point_P2          // Clearance b/w conductor & water(m)
D_1 = w*x_1**2/(2*T)                  // Height of P1 above O(m)
mid_point_P1 = D-D_1                  // Mid-point above P1(m)
clearance_alt = h_1+mid_point_P1      // Clearance b/w conductor & water(m)

// Results
disp("PART II - EXAMPLE : 5.8 : SOLUTION :-")
printf("\nClearance between conductor & water at a point midway b/w towers = %.2f m above water\n", clearance)
printf("\nALTERNATIVE METHOD:")
printf("\nClearance between conductor & water at a point midway b/w towers = %.2f m above water", clearance_alt)
