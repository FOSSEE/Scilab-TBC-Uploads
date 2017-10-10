// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 16: POWER SYSTEM GROUNDING

// EXAMPLE : 16.1 :
// Page number 409
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 132.0*10**3        // Voltage(V)
n = 3.0                // Number of phase
f = 50.0               // Frequency(Hz)
l = 50.0               // Line length(km)
C = 0.0157*10**-6      // Capacitance to earth(F/km)

// Calculations
L = 1/(n*(2*%pi*f)**2*C*l)         // Inductance(H)
X_L = 2*%pi*f*L                    // Reactance(ohm)
I_F = V/(3**0.5*X_L)               // Current(A)
rating = I_F*V/(3**0.5*1000)       // Rating of arc suppression coil(kVA)

// Results
disp("PART II - EXAMPLE : 16.1 : SOLUTION :-")
printf("\nInductance, L = %.1f Henry", L)
printf("\nRating of arc suppression coil = %.f kVA \n", rating)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more approximation in the textbook")
