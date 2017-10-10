// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.23 :
// Page number 306
clear ; clc ; close ; // Clear the work space and console

// Given data
G = 20.0        // Rating of turbo-generator(MVA)
PF = 0.75       // Lagging power factor
fault = 0.5     // Fault reduces output power
N_s = 1500.0    // Synchronous speed(rpm). From Example 10.22

// Calculations
P_prefault = PF*G         // Pre-fault output power(MW)
P_a = P_prefault*fault    // Post-fault output power(MW)
w = 2.0*%pi*N_s/60        // ω(rad/sec)
T_a = P_a*10**6/w         // Accelerating torque at the time of fault occurrence(N-m)

// Results
disp("PART II - EXAMPLE : 10.23 : SOLUTION :-")
printf("\nAccelerating torque at the time of fault occurrence, T_a = %.f N-m", T_a)
