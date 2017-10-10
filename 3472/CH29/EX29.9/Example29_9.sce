// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 3: SYMMETRICAL COMPONENTS' ANALYSIS

// EXAMPLE : 3.9 :
// Page number 493-494
clear ; clc ; close ; // Clear the work space and console

// Given data
I_A = 1000.0                           // Current through line A(A)
I_C = 0                                // Current through line C(A)

// Calculations
I_B = 1000.0*exp(%i*180.0*%pi/180)     // Current through line B(A)
a = exp(%i*120.0*%pi/180)              // Operator
I_a0 = 1.0/3*(I_A+I_B+I_C)             // Zero sequence component of current(A)
I_b0 = I_a0                            // Zero sequence component of current(A)
I_c0 = I_a0                            // Zero sequence component of current(A)
I_a1 = 1.0/3*(I_A+a*I_B+a**2*I_C)      // Positive sequence component of current(A)
I_b1 = a**2*I_a1                       // Positive sequence component of current(A)
I_c1 = a*I_a1                          // Positive sequence component of current(A)
I_a2 = 1.0/3*(I_A+a**2*I_B+a*I_C)      // Negative sequence component of current(A)
I_b2 = a*I_a2                          // Negative sequence component of current(A)
I_c2 = a**2*I_a2                       // Negative sequence component of current(A)

// Results
disp("PART III - EXAMPLE : 3.9 : SOLUTION :-")
printf("\nCurrent in line A, I_A = %.f∠%.f° A", abs(I_A),phasemag(I_A))
printf("\nCurrent in line B, I_B = %.f∠%.f° A", abs(I_B),phasemag(I_B))
printf("\nCurrent in line C, I_C = %.f A", I_C)
printf("\nSymmetrical current components of line A are:")
printf("\n I_a0 = %.f A", abs(I_a0))
printf("\n I_a1 = %.1f∠%.f° A", abs(I_a1),phasemag(I_a1))
printf("\n I_a2 = %.1f∠%.f° A", abs(I_a2),phasemag(I_a2))
printf("\nSymmetrical current components of line B are:")
printf("\n I_b0 = %.f A", abs(I_b0))
printf("\n I_b1 = %.1f∠%.f° A", abs(I_b1),phasemag(I_b1))
printf("\n I_b2 = %.1f∠%.f° A", abs(I_b2),phasemag(I_b2))
printf("\nSymmetrical current components of line C are:")
printf("\n I_c0 = %.f A", abs(I_c0))
printf("\n I_c1 = %.1f∠%.f° A", abs(I_c1),phasemag(I_c1))
printf("\n I_c2 = %.1f∠%.f° A", abs(I_c2),phasemag(I_c2))
