// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 3: SYMMETRICAL COMPONENTS' ANALYSIS

// EXAMPLE : 3.8 :
// Page number 493
clear ; clc ; close ; // Clear the work space and console

// Given data
I_a = 1000.0                           // Current to earth(A)
I_b = 0                                // Current(A)
I_c = 0                                // Current(A)

// Calculations
a = exp(%i*120.0*%pi/180)              // Operator
I_a0 = 1.0/3*(I_a+I_b+I_c)             // Zero sequence component of current(A)
I_b0 = I_a0                            // Zero sequence component of current(A)
I_c0 = I_a0                            // Zero sequence component of current(A)
I_a1 = 1.0/3*(I_a+a*I_b+a**2*I_c)      // Positive sequence component of current(A)
I_b1 = a**2*I_a1                       // Positive sequence component of current(A)
I_c1 = a*I_a1                          // Positive sequence component of current(A)
I_a2 = 1.0/3*(I_a+a**2*I_b+a*I_c)      // Negative sequence component of current(A)
I_b2 = a*I_a2                          // Negative sequence component of current(A)
I_c2 = a**2*I_a2                       // Negative sequence component of current(A)

// Results
disp("PART III - EXAMPLE : 3.8 : SOLUTION :-")
printf("\nZero sequence component of current for all phases are")
printf("\n I_a0 = %.1f∠%.f° A", abs(I_a0),phasemag(I_a0))
printf("\n I_b0 = %.1f∠%.f° A", abs(I_b0),phasemag(I_b0))
printf("\n I_c0 = %.1f∠%.f° A", abs(I_c0),phasemag(I_c0))
printf("\nPositive sequence component of current for all phases are")
printf("\n I_a1 = %.1f∠%.f° A", abs(I_a1),phasemag(I_a1))
printf("\n I_b1 = %.1f∠%.f° A", abs(I_b1),360+phasemag(I_b1))
printf("\n I_c1 = %.1f∠%.f° A", abs(I_c1),phasemag(I_c1))
printf("\nNegative sequence component of current for all phases are")
printf("\n I_a2 = %.1f∠%.f° A", abs(I_a2),phasemag(I_a2))
printf("\n I_b2 = %.1f∠%.f° A", abs(I_b2),phasemag(I_b2))
printf("\n I_c2 = %.1f∠%.f° A", abs(I_c2),360+phasemag(I_c2))
