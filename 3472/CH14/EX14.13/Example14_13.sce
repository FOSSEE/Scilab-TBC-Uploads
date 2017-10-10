// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.13 :
// Page number 219
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 11.0*10**3    // Line Voltage(V)
f = 50.0          // Frequency(Hz)
C_c = 3.7         // Measured capacitance(µF)

// Calculations
C_0 = 2*C_c                               // Capacitance(µF)
I_ch = 2*%pi*f*C_0*V/3**0.5*10**-6        // Charging current per phase(A)

// Results
disp("PART II - EXAMPLE : 7.13 : SOLUTION :-")
printf("\nCharging current drawn by a cable = %.2f A", I_ch)
