// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.6 :
// Page number 104
clear ; clc ; close ; // Clear the work space and console

// Given data
D_a_b = 175.0            // Distance between conductors a & b(cm)
D_a_aa = 90.0            // Distance between conductors a & a'(cm)
d = 2.5                  // Diameter of conductor(cm)

// Calculations
GMR = 0.7788*d/2.0                                    // GMR(cm)
D_a_a = GMR                                           // Self GMD of conductor a(cm)
D_aa_aa = D_a_a                                       // Self GMD of conductor a'(cm)
D_aa_a = 90.0                                         // Distance between conductors a' & a(cm)
D_s = (D_a_a*D_a_aa*D_aa_aa*D_aa_a)**(1.0/4)          // Self GMD of conductor A = Self GMD of conductor B(cm)
D_a_bb = (D_a_aa**2+D_a_b**2)**(1.0/2)                // Distance between conductors a & b'(cm)
D_m = ((D_a_b*D_a_bb)**2)**(1.0/4)                    // Mutual GMD(cm)
L = 4*10**-4*log(D_m/D_s)                             // Inductance of the line(H/km)

// Results
disp("PART II - EXAMPLE : 2.6 : SOLUTION :-")
printf("\nInductance of the line, L = %.1e H/km", L)
