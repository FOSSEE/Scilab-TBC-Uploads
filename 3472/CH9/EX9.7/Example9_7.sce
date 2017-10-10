// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.7 :
// Page number 104
clear ; clc ; close ; // Clear the work space and console

// Given data
D_a_a = 100.0            // Distance between conductors a & a(cm)
D_a_b = 25.0             // Distance between conductors a & b(cm)
d = 2.0                  // Diameter of conductor(cm)

// Calculations
r = d/2.0                                             // Conductor radius(cm)
GMR = 0.7788*r                                        // GMR(cm)
D_a_aa = GMR                                          // GMR of conductors a & a'(cm)
D_aa_a = D_a_aa                                       // GMR of conductors a' & a(cm)
D_aa_aa = D_a_a                                       // GMR of conductors a' & a'(cm)
D_s = (D_a_a*D_a_aa*D_aa_aa*D_aa_a)**(1.0/4)          // Self GMD of conductor A = Self GMD of conductor B(cm)
D_a_bb = (D_a_a**2+D_a_b**2)**(1.0/2)                 // Distance between conductors a & b'(cm)
D_aa_b = D_a_bb                                       // Distance between conductors a' & b(cm)
D_aa_bb = D_a_b                                       // Distance between conductors a' & b'(cm)
D_m = (D_a_b*D_a_bb*D_aa_b*D_aa_bb)**(1.0/4)          // Mutual GMD(cm)
L = 2*10**-7*log(D_m/D_s)                             // Inductance/conductor/mt(H)
L_mH = 2.0*L*1000.0*1000.0                            // Loop inductance per km(mH)

// Results
disp("PART II - EXAMPLE : 2.7 : SOLUTION :-")
printf("\nInductance per km of the double circuit line, L = %.1f mH", L_mH)
