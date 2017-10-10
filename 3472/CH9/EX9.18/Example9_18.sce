// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.18 :
// Page number 115
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 2.0/100    // Diameter of conductor(m)
D_AB = 4.0     // Spacing between conductor A & B(m)
D_BC = 4.0     // Spacing between conductor B & C(m)
D_CA = 8.0     // Spacing between conductor C & A(m)

// Calculations
r = d/2                                       // Radius of conductor(m)
e = 1.0/(36*%pi)*10**-9                       // Constant ε_0
D_eq = (D_AB*D_BC*D_CA)**(1.0/3)              // Equivalent distance(m)
C_n = 2*%pi*e/log(D_eq/r)*1000.0              // Capacitance to neutral(F/km)
C_nu = C_n*10.0**6                            // Capacitance to neutral(μF/km)

// Results
disp("PART II - EXAMPLE : 2.18 : SOLUTION :-")
printf("\nNew value of capacitance, C_n = %.5f μF/km \n", C_nu)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more approximation in the textbook")
