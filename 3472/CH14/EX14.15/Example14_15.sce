// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.15 :
// Page number 220-221
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 13.2*10**3    // Line Voltage(V)
f = 50.0          // Frequency(Hz)
C_BC = 4.2        // Capacitance b/w two cores(µF)

// Calculations
C_n = 2.0*C_BC                              // Capacitance to neutral(µF)
V_ph = V/3**0.5                             // Operating phase voltage(V)
I_c = 2.0*%pi*f*C_n*V/3**0.5*10**-6         // Charging current(A)

// Results
disp("PART II - EXAMPLE : 7.15 : SOLUTION :-")
printf("\nCharging current drawn by cable, I_c = %.2f A", I_c)
