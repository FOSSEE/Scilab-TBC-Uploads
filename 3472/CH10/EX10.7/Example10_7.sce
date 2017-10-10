// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.7 :
// Page number 132-133
clear ; clc ; close ; // Clear the work space and console

// Given data
V_s = 66.0                    // Voltage(kV)
f = 50.0                      // Frequency(Hz)
l = 150.0                     // Line length(km)
r = 0.25                      // Resistance of each conductor(ohm/km)
x = 0.5                       // Inductive reactance of each conductor(ohm/km)
y = 0.04*10**-4               // Capacitive admittance(s/km)

// Calculations
// Case(a)
R = r*l                                          // Total resistance(ohm)
X = x*l                                          // Inductive reactance(ohm)
Y = y*l                                          // Capacitive resistance(s)
Y_2 = Y/2                                        // 1/2 of Capacitive resistance(s)
// Case(b)
Z = complex(R,X)                                 // Total impedance(ohm)
A = 1+(Y*exp(%i*90.0*%pi/180)*Z/2)               // Line constant
V_R_noload = V_s/abs(A)                          // Receiving end voltage at no-load(kV)

// Results
disp("PART II - EXAMPLE : 3.7 : SOLUTION :-")
printf("\nCase(a): Total resistance, R = %.1f ohm", R)
printf("\n         Inductive reactance, X = %.1f ohm", X)
printf("\n         Capacitive resistance, Y = %.1e s", Y)
printf("\n         Capacitive resistance, Y/2 = %.1e s", Y_2)
printf("\nCase(b): Receiving end voltage at no-load, V_R = %.2f kV", V_R_noload)
