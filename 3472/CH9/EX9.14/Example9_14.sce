// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.14 :
// Page number 110-111
clear ; clc ; close ; // Clear the work space and console

// Given data
r = 6.0/1000                // Radius of conductor(m)
D_a_cc = 5.0                // Distance between conductor a & c'(m)
D_b_bb = 6.0                // Distance between conductor b & b'(m)
D_c_aa = 5.0                // Distance between conductor c & a'(m)
D_acc_bbb = 3.0             // Distance between conductor ac' & bb'(m)
D_bbb_caa = 3.0             // Distance between conductor bb' & ca'(m)
D_a_c = 6.0                 // Distance between conductor a & c(m)

// Calculations
r_GMR = 0.7788*r                                                  // GMR of conductor(m)
D_a_b = (D_acc_bbb**2+((D_b_bb-D_a_cc)/2)**2)**(1.0/2)            // Distance between conductor a & b(m)
D_a_bb = (D_acc_bbb**2+(D_a_cc+(D_b_bb-D_a_cc)/2)**2)**(1.0/2)    // Distance between conductor a & b'(m)
D_a_aa = ((D_acc_bbb+D_bbb_caa)**2+D_c_aa**2)**(1.0/2)            // Distance between conductor a & a'(m)
D_a_a = r_GMR                                                     // Self GMD of conductor a(m)
D_aa_aa = D_a_a                                                   // Self GMD of conductor a'(m)
D_aa_a = D_a_aa                                                   // Distance between conductor a' & a(m)
D_S1 = (D_a_a*D_a_aa*D_aa_aa*D_aa_a)**(1.0/4)                     // Self GMD in position 1(m)
D_bb_b = D_b_bb                                                   // Distance between conductor b' & b(m)
D_S2 = (D_a_a*D_b_bb*D_aa_aa*D_bb_b)**(1.0/4)                     // Self GMD in position 2(m)
D_S3 = (D_a_a*D_a_aa*D_aa_aa*D_aa_a)**(1.0/4)                     // Self GMD in position 3(m)
D_S = (D_S1*D_S2*D_S3)**(1.0/3)                                   // Equivalent self GMD(m)
D_aa_bb = D_a_b                                                   // Distance between conductor a' & b'(m)
D_aa_b = D_a_bb                                                   // Distance between conductor a' & b(m)
D_AB = (D_a_b*D_a_bb*D_aa_b*D_aa_bb)**(1.0/4)                     // Mutual GMD(m)
D_BC = D_AB                                                       // Mutual GMD(m)
D_c_a = D_a_c                                                     // Distance between conductor c & a(m)
D_cc_aa = D_c_a                                                   // Distance between conductor a' & c'(m)
D_cc_a = D_a_cc                                                   // Distance between conductor c' & a(m)
D_CA = (D_c_a*D_c_aa*D_cc_a*D_cc_aa)**(1.0/4)                     // Mutual GMD(m)
D_m = (D_AB*D_BC*D_CA)**(1.0/3)                                   // Equivalent Mutual GMD(m)
L = 0.2*log(D_m/D_S)                                              // Inductance per phase(mH/km)

// Results
disp("PART II - EXAMPLE : 2.14 : SOLUTION :-")
printf("\nInductance per phase, L = %.2f mH/km", L)
