// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 3: SYMMETRICAL COMPONENTS' ANALYSIS

// EXAMPLE : 3.7 :
// Page number 492-493
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 2300.0                                   // Rated voltage(V)
kVA = 500.0                                  // kVA rating
I_1 = 100.0                                  // Line current(A)
I_2 = 100.0*exp(%i*180*%pi/180)              // Line current(A)
I_3 = 0                                      // Line current(A)

// Calculations
a = exp(%i*120.0*%pi/180)              // Operator
I_10 = 1.0/3*(I_1+I_2+I_3)             // Symmetrical component of line current for phase 1(A)
I_11 = 1.0/3*(I_1+a*I_2+a**2*I_3)      // Symmetrical component of line current for phase 1(A)
I_12 = 1.0/3*(I_1+a**2*I_2+a*I_3)      // Symmetrical component of line current for phase 1(A)
I_20 = I_10                            // Symmetrical component of line current for phase 2(A)
I_21 = a**2*I_11                       // Symmetrical component of line current for phase 2(A)
I_22 = a*I_12                          // Symmetrical component of line current for phase 2(A)
I_30 = I_10                            // Symmetrical component of line current for phase 3(A)
I_31 = a*I_11                          // Symmetrical component of line current for phase 3(A)
I_32 = a**2*I_12                       // Symmetrical component of line current for phase 3(A)

// Results
disp("PART III - EXAMPLE : 3.7 : SOLUTION :-")
printf("\nSymmetrical component of line current for phase 1:")
printf("\n I_10 = %.1f A", abs(I_10))
printf("\n I_11 = %.2f∠%.f° A", abs(I_11),phasemag(I_11))
printf("\n I_12 = %.2f∠%.f° A", abs(I_12),phasemag(I_12))
printf("\nSymmetrical component of line current for phase 2:")
printf("\n I_20 = %.1f A", abs(I_20))
printf("\n I_21 = %.2f∠%.f° A", abs(I_21),phasemag(I_21))
printf("\n I_22 = %.2f∠%.f° A", abs(I_22),phasemag(I_22))
printf("\nSymmetrical component of line current for phase 3:")
printf("\n I_30 = %.1f A", abs(I_30))
printf("\n I_31 = %.2f∠%.f° A", abs(I_31),phasemag(I_31))
printf("\n I_32 = %.2f∠%.f° A", abs(I_32),phasemag(I_32))
