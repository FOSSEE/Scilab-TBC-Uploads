// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.16 :
// Page number 112
clear ; clc ; close ; // Clear the work space and console

// Given data
l = 40.0      // Length of line(km)
d = 5.0/1000  // Diameter of wire(m)
D = 1.5       // Spacing between conductor(m)
h = 7.0       // Height of conductors above ground(m)

// Calculations
r = d/2                                                       // Radius of wire(m)
e = 1.0/(36*%pi)*10**-9                                       // Constant ε_0
// Neglecting presence of ground
C_ab_1 = %pi*e/(log(D/r))                                     // Capacitance(F/m)
C_ab_12 = C_ab_1*l*1000.0*10**6                               // Capacitance(μF)
// Taking presence of ground
C_ab_2 = %pi*e/log(D/(r*(1+(D/(2*h))**2)**(1.0/2)))           // Capacitance(F/m)
C_ab_22 = C_ab_2*l*1000.0*10**6                               // Capacitance(μF)

// Results
disp("PART II - EXAMPLE : 2.16 : SOLUTION :-")
printf("\nCapacitance of line neglecting presence of ground, C_ab = %.3f μF", C_ab_12)
printf("\nCapacitance of line taking presence of ground, C_ab = %.3f μF", C_ab_22)
