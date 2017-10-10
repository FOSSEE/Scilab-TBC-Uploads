// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 3: SYMMETRICAL COMPONENTS' ANALYSIS

// EXAMPLE : 3.6 :
// Page number 491-492
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 2300.0                                       // Rated voltage(V)
kVA = 500.0                                      // kVA rating
E_A = 2760.0*exp(%i*0*%pi/180)                   // Line voltage(V)
E_B = 2300.0*exp(%i*-138.6*%pi/180)              // Line voltage(V)
E_C = 1840.0*exp(%i*124.2*%pi/180)               // Line voltage(V)

// Calculations
a = exp(%i*120.0*%pi/180)                  // Operator
E_A1 = 1.0/3*(E_A+a*E_B+a**2*E_C)          // Positive sequence voltage(V)
E_A2 = 1.0/3*(E_A+a**2*E_B+a*E_C)          // Negative sequence voltage(V)
E_a1 = -%i/3**0.5*E_A1                     // Positive sequence star voltage(V)
E_a2 = %i/3**0.5*E_A2                      // Negative sequence star voltage(V)
E_a0 = 0.0                                 // Zero sequence voltage(V)
E_a = E_a1+E_a2+E_a0                       // Symmetrical voltage component(V)
R = V**2/(kVA*1000)                        // Resistance(ohm)
I_a = abs(E_a)/R                           // Current in line a(A)
E_b = a**2*E_a1+a*E_a2+E_a0                // Symmetrical voltage component(V)
I_b = abs(E_b)/R                           // Current in line b(A)
E_c = a*E_a1+a**2*E_a2+E_a0                // Symmetrical voltage component(V)
I_c = abs(E_c)/R                           // Current in line c(A)

// Results
disp("PART III - EXAMPLE : 3.6 : SOLUTION :-")
printf("\nCurrent in line a, |I_a| = %.1f A", I_a)
printf("\nCurrent in line b, |I_b| = %.f A", I_b)
printf("\nCurrent in line c, |I_c| = %.1f A \n", I_c)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
