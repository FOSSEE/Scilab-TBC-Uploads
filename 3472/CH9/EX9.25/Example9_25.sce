// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.25 :
// Page number 120
clear ; clc ; close ; // Clear the work space and console

// Given data
d_1 = 6.0              // Distance between conductor 1 & 2(m)
d_2 = 6.0              // Distance between conductor 2 & 3(m)
d_3 = 12.0             // Distance between conductor 3 & 1(m)
dia = 1.24/100         // Diameter of conductor(m)
l = 100.0              // Length of line(km)

// Calculations
r = dia/2                                    // Radius of conductor(m)
e = 8.854*10**-12                            // Constant ε_0
d = (d_1*d_2*d_3)**(1.0/3)                   // Distance(m)
C = 2*%pi*e/log(d/r)                         // Capacitance(F/m)
C_l = C*1000.0*l                             // Capacitance for entire length(F)
C_lu = C_l*10.0**6                           // Capacitance for entire length(μF)

// Results
disp("PART II - EXAMPLE : 2.25 : SOLUTION :-")
printf("\nCapacitance of the line, C = %.3f μF", C_lu)
