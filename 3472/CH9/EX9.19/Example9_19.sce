// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.19 :
// Page number 115
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 2.6        // Outside diameter of conductor(cm)
D_RY = 8.0     // Spacing between conductor R & Y(m)
D_YB = 8.0     // Spacing between conductor Y & B(m)
D_RB = 16.0    // Spacing between conductor R & B(m)
h = 13.0       // Height of conductor from ground(m)

// Calculations
r = d/2                                                                  // Radius of conductor(m)
e = 1.0/(36*%pi)*10**-9                                                  // Constant ε_0
h_12 = (D_RY**2+(2*h)**2)**(1.0/2)                                       // Height of conductor 1 & 2(m)
h_23 = h_12                                                              // Height of conductor 2 & 3(m)
h_31 = (D_RB**2+(2*h)**2)**(1.0/2)                                       // Height of conductor 3 & 1(m)
h_1 = 2*h                                                                // Height of transposed conductor 1(m)
h_2 = 2*h                                                                // Height of transposed conductor 2(m)
h_3 = 2*h                                                                // Height of transposed conductor 3(m)
D_eq = (D_RY*D_YB*D_RB)**(1.0/3)                                         // Equivalent distance(m)
h_123 = (h_12*h_23*h_31)**(1.0/3)                                        // Height(m)
h_1_2_3 = (h_1*h_2*h_3)**(1.0/3)                                         // Height(m)
C_n = 2*%pi*e/(log(D_eq*100/r)-log(h_123/h_1_2_3))*1000.0                // Capacitance of conductor A(F/km)

// Results
disp("PART II - EXAMPLE : 2.19 : SOLUTION :-")
printf("\nCapacitance per phase to neutral of a line, C_n = %.1e F/km", C_n)
