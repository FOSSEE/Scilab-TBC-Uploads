// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.1 :
// Page number 270
clear ; clc ; close ; // Clear the work space and console

// Given data
Z = 0.1        // Impedance of transmission line(p.u)
M = 0.3        // Stability margin
X = 1.0        // Constant(p.u)

// Calculations
sin_delta_0 = 1-M                // Sin(δ_0)
delta_0 = asind(sin_delta_0)     // δ_0(°)
P_0 = X/Z*sin_delta_0            // Magnitude of P_0(p.u)

// Results
disp("PART II - EXAMPLE : 10.1 : SOLUTION :-")
printf("\nOperating power angle, δ_0 = %.2f° ", delta_0)
printf("\nP_0 = %.2f p.u", P_0)
