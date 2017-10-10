// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.23 :
// Page number 119
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 0.8/100        // Diameter of conductor(m)
f = 50.0           // Frequency(Hz)
D_a_b = 5.0        // Distance between conductors a & b(m)
D_b_c = 5.0        // Distance between conductors b & c(m)
D_c_a = 8.0        // Distance between conductors c & a(m)
l = 25.0           // Length of line(km)

// Calculations
r = d/2                                          // Radius of conductor(m)
e = 8.854*10**-12                                // Constant ε_0
D_e = (D_a_b*D_b_c*D_c_a)**(1.0/3)               // Equivalent GMD(m)
L = 2*((1.0/4)+log(D_e/r))*10**-4                // Inductance(H/km)
X_L = 2*%pi*f*L                                  // Inductive reactance per km(ohms)
C = %pi*e/log(D_e/r)                             // Capacitance(F/m)
C_l = C*1000.0*l                                 // Capacitance for entire length(F)
C_lu = C_l*10.0**6                               // Capacitance for entire length(μF)
X_c = 1/(2.0*%pi*f*C_l)                          // Capacitive reactance to neutral(ohm)
X_ck = X_c/1000.0                                // Capacitive reactance to neutral(kilo-ohm)

// Results
disp("PART II - EXAMPLE : 2.23 : SOLUTION :-")
printf("\nInductive reactance of the line per kilometer per phase, X_L = %.3f ohm", X_L)
printf("\nCapacitance of the line, C = %.3f μF", C_lu)
printf("\nCapacitive reactance of the transmission line, X_c = %.1f kilo-ohm\n", X_ck)
printf("\nNOTE: ERROR: Change in obtained answer from that of textbook due to wrong substitution in finding Capacitance")
