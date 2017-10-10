// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.24 :
// Page number 156-157
clear ; clc ; close ; // Clear the work space and console

// Given data
A = 0.94*exp(%i*1.5*%pi/180)         // Constant
B = 150.0*exp(%i*67.2*%pi/180)       // Constant(ohm)
D = A                                // Constant
Y_t = 0.00025*exp(%i*-75.0*%pi/180)  // Shunt admittance(mho)
Z_t = 100.0*exp(%i*70.0*%pi/180)     // Series impedance(ohm)

// Calculations
C = (A*D-1)/B               // Constant(mho)
A_0 = A*(1+Y_t*Z_t)+B*Y_t   // Constant
B_0 = A*Z_t+B               // Constant(ohm)
C_0 = C*(1+Y_t*Z_t)+D*Y_t   // Constant(mho)
D_0 = C*Z_t+D               // Constant

// Results
disp("PART II - EXAMPLE : 3.24 : SOLUTION :-")
printf("\nA_0 = %.3f∠%.f° ", abs(A_0),phasemag(A_0))
printf("\nB_0 = %.f∠%.1f° ohm", abs(B_0),phasemag(B_0))
printf("\nC_0 = %.6f∠%.1f° mho", abs(C_0),phasemag(C_0))
printf("\nD_0 = %.3f∠%.1f° \n", abs(D_0),phasemag(D_0))
printf("\nNOTE: Changes in obtained answer from that of textbook is due to more precision")
