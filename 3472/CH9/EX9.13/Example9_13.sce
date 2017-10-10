// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.13 :
// Page number 110
clear ; clc ; close ; // Clear the work space and console

// Given data
D_a_a = 0.9                   // Self GMD of conductor a(cm)
D_a_aa = 40.0                 // Distance between conductor a & a'(cm)
D_a_b = 1000.0                // Distance between conductor a & b(cm)
D_a_bb = 1040.0               // Distance between conductor a & b'(cm)
D_aa_b = 960.0                // Distance between conductor a' & b(cm)
D_c_a = 2000.0                // Distance between conductor a & c(cm)
D_c_aa = 1960.0               // Distance between conductor a' & c(cm)
D_cc_a = 2040.0               // Distance between conductor a & c'(cm)

// Calculations
D_aa_aa = D_a_a                                   // Self GMD of conductor a'(cm)
D_aa_a = D_a_aa                                   // Distance between conductor a' & a(cm)
D_s1 = (D_a_a*D_a_aa*D_aa_aa*D_aa_a)**(1.0/4)     // Self GMD in position 1(cm)
D_s2 = D_s1                                       // Self GMD in position 2(cm)
D_s3 = D_s1                                       // Self GMD in position 3(cm)
D_s = (D_s1*D_s2*D_s3)**(1.0/3)                   // Equivalent self GMD(cm)
D_aa_bb = D_a_b                                   // Distance between conductor a' & b'(cm)
D_AB = (D_a_b*D_a_bb*D_aa_b*D_aa_bb)**(1.0/4)     // Mutual GMD(cm)
D_BC = D_AB                                       // Mutual GMD(cm)
D_cc_aa = D_c_a                                   // Distance between conductor a' & c'(cm)
D_CA = (D_c_a*D_c_aa*D_cc_a*D_cc_aa)**(1.0/4)     // Mutual GMD(cm)
D_m = (D_AB*D_BC*D_CA)**(1.0/3)                   // Equivalent Mutual GMD(cm)
L = 0.2*log(D_m/D_s)                              // Inductance per phase(mH/km)

// Results
disp("PART II - EXAMPLE : 2.13 : SOLUTION :-")
printf("\nInductance per phase, L = %.3f mH/km", L)
