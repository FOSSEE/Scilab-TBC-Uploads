// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 3: SYMMETRICAL COMPONENTS' ANALYSIS

// EXAMPLE : 3.1 :
// Page number 487-488
clear ; clc ; close ; // Clear the work space and console

// Given data
I_R = complex(12.0,24.0)    // Line current(A)
I_Y = complex(16.0,-2.0)    // Line current(A)
I_B = complex(-4.0,-6.0)    // Line current(A)

// Calculations
alpha = exp(%i*120.0*%pi/180)                // Operator
I_R0 = 1.0/3*(I_R+I_Y+I_B)                   // Zero sequence component(A)
I_R1 = 1.0/3*(I_R+alpha*I_Y+alpha**2*I_B)    // Positive sequence component(A)
I_R2 = 1.0/3*(I_R+alpha**2*I_Y+alpha*I_B)    // Negative sequence component(A)

// Results
disp("PART III - EXAMPLE : 3.1 : SOLUTION :-")
printf("\nPositive sequence current, I_R1 = (%.3f + %.1fj) A", real(I_R1),imag(I_R1))
printf("\nNegative sequence current, I_R2 = (%.3f + %.2fj) A", real(I_R2),imag(I_R2))
printf("\nZero sequence current, I_R0 = (%.1f + %.2fj) A", real(I_R0),imag(I_R0))
