// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.24 :
// Page number 119-120
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 250.0          // Line voltage(V)
f = 50.0           // Frequency(Hz)
D = 1.5            // Distance of separation(m)
d = 1.5/100        // Diameter of conductor(m)
l = 50.0           // Length of line(km)

// Calculations
// Case(i)
r = d/2                                          // Radius of conductor(m)
e = 8.854*10**-12                                // Constant ε_0
C = %pi*e/log(D/r)                               // Capacitance(F/m)
C_l = C*1000.0*l                                 // Capacitance for entire length(F)
C_lu = C_l*10.0**6                               // Capacitance for entire length(μF)
// Case(ii)
I_charg = 2.0*%pi*f*C_l*V*1000.0                 // Charging current(mA)

// Results
disp("PART II - EXAMPLE : 2.24 : SOLUTION :-")
printf("\nCase(i) : Capacitance of the line, C = %.3f μF", C_lu)
printf("\nCase(ii): Charging current, I_charg = %.2f mA", I_charg)
