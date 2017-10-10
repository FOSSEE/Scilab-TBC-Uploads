// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.5 :
// Page number 103-104
clear ; clc ; close ; // Clear the work space and console

// Given data
D_a_b = 120.0            // Distance between conductors a & b(cm)
D_a_bb = 140.0           // Distance between conductors a & b'(cm)
D_aa_b = 100.0           // Distance between conductors a' & b(cm)
D_aa_bb = 120.0          // Distance between conductors a' & b'(cm)
D_a_aa = 20.0            // Distance between conductors a & a'(cm)
d = 2.0                  // Diameter of conductor(cm)

// Calculations
D_m = (D_a_b*D_a_bb*D_aa_b*D_aa_bb)**(1.0/4)          // Mutual GMD(cm)
D_a_a = 0.7788*d/2.0                                  // Self GMD of conductor a(cm)
D_aa_aa = D_a_a                                       // Self GMD of conductor a'(cm)
D_aa_a = D_a_aa                                       // Distance between conductors a' & a(cm)
D_s = (D_a_a*D_a_aa*D_aa_aa*D_aa_a)**(1.0/4)          // Self GMD(cm)
L = 4*10**-4*log(D_m/D_s)                             // Total inductance of the line(H/km)
L_mH = L*1000.0                                       // Total inductance of the line(mH/km)

// Results
disp("PART II - EXAMPLE : 2.5 : SOLUTION :-")
printf("\nTotal inductance of the line, L = %.2f mH/km", L_mH)
