// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 9: LOAD FLOW STUDY USING COMPUTER TECHNIQUES

// EXAMPLE : 9.8 :
// Page number 242
clear ; clc ; close ; // Clear the work space and console

// Given data
V_1 = 1.0                        // Voltage(p.u)
S_g2 = complex(0,1.0)            // Complex power generated(p.u)
S_D2 = complex(0.5,1.0)          // Complex power demand(p.u)
Z_L = complex(0,0.5)             // Impedance(p.u)

// Calculations
Y_L = 1.0/Z_L                                   // Admittance(p.u)
Y_22 = Y_L                                      // Admittance(mho)
Y_21 = -Y_L                                     // Admittance(mho)
S_2 = S_g2-S_D2
V_2_0 = 1.0                                     // Initial guess
V_2_1 = 1.0/Y_22*((conj(S_2/V_2_0))-Y_21*V_1)   // V_2(p.u). In 1st iteration
V_2_2 = 1.0/Y_22*((conj(S_2/V_2_1))-Y_21*V_1)   // V_2(p.u). In 2nd iteration
V_2_3 = 1.0/Y_22*((conj(S_2/V_2_2))-Y_21*V_1)   // V_2(p.u). In 3rd iteration
V_2_4 = 1.0/Y_22*((conj(S_2/V_2_3))-Y_21*V_1)   // V_2(p.u). In 4th iteration
V_2_5 = 1.0/Y_22*((conj(S_2/V_2_4))-Y_21*V_1)   // V_2(p.u). In 5th iteration
V_2_6 = 1.0/Y_22*((conj(S_2/V_2_5))-Y_21*V_1)   // V_2(p.u). In 6th iteration

// Results
disp("PART II - EXAMPLE : 9.8 : SOLUTION :-")
printf("\nBy G-S method, V_2 = %.6f∠%.5f° p.u\n", abs(V_2_6),phasemag(V_2_6))
