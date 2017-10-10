// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.20 :
// Page number 117-118
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 2.5        // Diameter of conductor(cm)
D = 200.0      // Distance of separation(cm)
l = 100.0      // Length of line(km)

// Calculations
r = d/2                                          // Radius of conductor(cm)
e = 1.0/(36*%pi)*10**-9                          // Constant ε_0
D_m = (D*(3**0.5)*D*(3**0.5)*D*D)**(1.0/4)       // Mutual GMD(cm)
D_s = (2*D*r)**(1.0/2)                           // Self GMD(cm)
C_n = 2*%pi*e/log(D_m/D_s)*1000.0                // Phase-to-neutral capacitance(F/km)
C_nu = C_n*l*10.0**6                             // Phase-to-neutral capacitance(μF)

// Results
disp("PART II - EXAMPLE : 2.20 : SOLUTION :-")
printf("\nPhase-to-neutral capacitance, C_n = %.2f μF", C_nu)
