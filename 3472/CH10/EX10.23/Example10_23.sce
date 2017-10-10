// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.23 :
// Page number 156
clear ; clc ; close ; // Clear the work space and console

// Given data
A_1 = 0.98*exp(%i*2.0*%pi/180)         // Constant of 1st line
B_1 = 28.0*exp(%i*69.0*%pi/180)        // Constant of 1st line(ohms)
C_1 = 0.0002*exp(%i*88.0*%pi/180)      // Constant of 1st line(mho)
D_1 = A_1                              // Constant of 1st line
A_2 = 0.95*exp(%i*3.0*%pi/180)         // Constant of 2nd line
B_2 = 40.0*exp(%i*85.0*%pi/180)        // Constant of 2nd line(ohms)
C_2 = 0.0004*exp(%i*90.0*%pi/180)      // Constant of 2nd line(mho)
D_2 = A_2                              // Constant of 2nd line

// Calculations
A = A_1*A_2+B_1*C_2         // Constant
B = A_1*B_2+B_1*D_2         // Constant(ohm)
C = C_1*A_2+D_1*C_2         // Constant(mho)
D = C_1*B_2+D_1*D_2         // Constant

// Results
disp("PART II - EXAMPLE : 3.23 : SOLUTION :-")
printf("\nA = %.3f∠%.1f° ", abs(A),phasemag(A))
printf("\nB = %.1f∠%.f° ohm", abs(B),phasemag(B))
printf("\nC = %.6f∠%.1f° mho", abs(C),phasemag(C))
printf("\nD = %.3f∠%.1f° ", abs(D),phasemag(D))
