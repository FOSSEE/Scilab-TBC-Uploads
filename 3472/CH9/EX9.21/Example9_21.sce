// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.21 :
// Page number 118
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 2.5/100        // Diameter of conductor(m)
D = 5.0            // Distance of separation(m)
h = 2.0            // Height of separation(m)

// Calculations
r = d/2                                          // Radius of conductor(m)
e = 1.0/(36*%pi)*10**-9                          // Constant ε_0
m = (D**2+h**2)**(1.0/2)                         // (m)
n = (D**2+(h*2)**2)**(1.0/2)                     // (m)
D_ab = (D*m)**(1.0/2)                            // Distance between conductor a & b(m)
D_bc = (D*m)**(1.0/2)                            // Distance between conductor b & c(m)
D_ca = (2*D*h)**(1.0/2)                          // Distance between conductor c & a(m)
D_eq = (D_ab*D_bc*D_ca)**(1.0/3)                 // Equivalent GMD(m)
D_s1 = (r*n)**(1.0/2)                            // Self GMD in position 1(m)
D_s2 = (r*h)**(1.0/2)                            // Self GMD in position 2(m)
D_s3 = (r*n)**(1.0/2)                            // Self GMD in position 3(m)
D_s = (D_s1*D_s2*D_s3)**(1.0/3)                  // Self GMD(m)
C_n = 2*%pi*e/log(D_eq/D_s)*1000.0               // Capacitance per phase to neutral(F/km)
C_nu = C_n*10.0**6                               // Capacitance per phase to neutral(μF/km)

// Results
disp("PART II - EXAMPLE : 2.21 : SOLUTION :-")
printf("\nCapacitance per phase to neutral, C_n = %.2f μF/km", C_nu)
