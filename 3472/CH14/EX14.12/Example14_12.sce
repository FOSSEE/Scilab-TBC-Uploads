// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.12 :
// Page number 219
clear ; clc ; close ; // Clear the work space and console

// Given data
c = 0.3         // Capacitance b/w any 2 conductor & sheath earthed(µF/km)
l = 10.0        // Length(km)
V = 33.0        // Line Voltage(kV)
f = 50.0        // Frequency(Hz)

// Calculations
C_eq = l*c                            // Capacitance b/w any 2 conductor & sheath earthed(µF)
C_p = 2.0*C_eq                        // Capacitance per phase(µF)
kVA = V**2*2*%pi*f*C_p/1000.0         // Three-phase kVA required(kVA)

// Results
disp("PART II - EXAMPLE : 7.12 : SOLUTION :-")
printf("\nEquivalent star connected capacity, C_eq = %.f µF", C_eq)
printf("\nkVA required = %.1f kVA", kVA)
