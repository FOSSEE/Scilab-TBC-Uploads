// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.12 :
// Page number 109-110
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 2.0                   // Diameter of conductor(cm)
D_ab = 400.0              // Distance between conductor a & b(cm)
D_bc = 400.0              // Distance between conductor b & c(cm)
D_ca = 800.0              // Distance between conductor c & a(cm)

// Calculations
I_ab = 1.0*exp(%i*-240.0*%pi/180)                                                  // I_a/I_b
I_cb = 1.0*exp(%i*-120.0*%pi/180)                                                  // I_c/I_b
r_GMR = 0.7788*d/2.0                                                              // GMR(cm)
L_a = 2.0*10**-7*complex(log((D_ab*D_ca)**0.5/r_GMR),(3**0.5/2*log(D_ab/D_ca)))   // Inductance per phase of A(H/m)
L_amH = L_a*10.0**6                                                               // Inductance per phase of A(mH/km)
L_b = 2.0*10**-7*complex(log((D_bc*D_ab)**0.5/r_GMR),(3**0.5/2*log(D_bc/D_ab)))   // Inductance per phase of B(H/m)
L_bmH = L_b*10.0**6                                                               // Inductance per phase of B(mH/km)
L_c = 2.0*10**-7*complex(log((D_ca*D_bc)**0.5/r_GMR),(3**0.5/2*log(D_ca/D_bc)))   // Inductance per phase of C(H/m)
L_cmH = L_c*10.0**6                                                               // Inductance per phase of C(mH/km)
D_eq = (D_ab*D_bc*D_ca)**(1.0/3)                                                  // Equivalent distance(cm)
L_avg = 0.2*log(D_eq/r_GMR)                                                       // Average inductance per phase(mH/km)

// Results
disp("PART II - EXAMPLE : 2.12 : SOLUTION :-")
printf("\nInductance of conductor a, L_a = (%.4f%.2fj) mH/km", real(L_amH),imag(L_amH))
printf("\nInductance of conductor b, L_b = %.3f mH/km", abs(L_bmH))
printf("\nInductance of conductor c, L_c = (%.4f+%.2fj) mH/km", real(L_cmH),imag(L_cmH))
printf("\nAverage inductance of each phase, L_avg = %.3f mH/km", L_avg)
