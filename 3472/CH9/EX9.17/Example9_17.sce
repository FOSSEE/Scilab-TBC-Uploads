// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.17 :
// Page number 114-115
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 2.0/100    // Diameter of conductor(m)
D_AB = 4.0     // Spacing between conductor A & B(m)
D_BC = 4.0     // Spacing between conductor B & C(m)
D_CA = 8.0     // Spacing between conductor C & A(m)

// Calculations
r = d/2                                                           // Radius of conductor(m)
D = 4.0                                                           // Assuming coomon distance(m)
e = 1.0/(36*%pi)*10**-9                                           // Constant ε_0
C_A = 2*%pi*e/(log(D/r)-complex(-0.5,0.866)*log(2))*1000.0        // Capacitance of conductor A(F/km)
C_Au = C_A*10.0**6                                                // Capacitance of conductor A(μF/km)
C_B = 2*%pi*e/log(D/r)*1000.0                                     // Capacitance of conductor B(F/km)
C_Bu = C_B*10.0**6                                                // Capacitance of conductor B(μF/km)
C_C = 2*%pi*e/(log(D/r)-complex(-0.5,-0.866)*log(2))*1000.0       // Capacitance of conductor C(F/km)
C_Cu = C_C*10.0**6                                                // Capacitance of conductor C(μF/km)

// Results
disp("PART II - EXAMPLE : 2.17 : SOLUTION :-")
printf("\nCapacitance of conductor A, C_A = (%.5f+%.6fj) μF/km", real(C_Au),imag(C_Au))
printf("\nCapacitance of conductor B, C_B = %.6f μF/km", C_Bu)
printf("\nCapacitance of conductor C, C_C = (%.5f%.6fj) μF/km", real(C_Cu),imag(C_Cu))
