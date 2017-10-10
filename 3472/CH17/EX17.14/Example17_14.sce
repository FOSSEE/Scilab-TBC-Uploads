// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.14 :
// Page number 304
clear ; clc ; close ; // Clear the work space and console

// Given data
Power = 20.0*10**3       // Rating of generator(kVA)
PF = 0.8                 // Lagging power factor
fault = 0.5              // Reduction in output under fault
P = 4.0                  // Number of poles
f = 50.0                 // Frequency(Hz)

// Calculations
P_m = Power*PF           // Output power before fault(kW)
P_e = fault*P_m          // Output after fault(kW)
P_a = P_m-P_e            // Accelerating power(kW)
w_s = 4.0*%pi*f/P        // Speed
T_a = P_a*10**3/w_s      // Accelerating torque at the time the fault occurs(N-m)

// Results
disp("PART II - EXAMPLE : 10.14 : SOLUTION :-")
printf("\nAccelerating torque at the time the fault occurs, T_a = %.2f N-m", T_a)
