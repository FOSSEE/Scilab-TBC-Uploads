// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 9: LOAD FLOW STUDY USING COMPUTER TECHNIQUES

// EXAMPLE : 9.7 :
// Page number 239
clear ; clc ; close ; // Clear the work space and console

// Given data
Y_C = complex(0,0.1)              // Shunt admittance(mho)
Z_L = complex(0,0.2)              // Series impedance(mho)

// Calculations
Y_L = 1.0/Z_L                     // Series admittance(mho)
Y_11 = Y_C+Y_C+Y_L+Y_L            // Admittance(mho)
Y_12 = -Y_L                       // Admittance(mho)
Y_13 = -Y_L                       // Admittance(mho)
Y_21 = Y_12                       // Admittance(mho)
Y_22 = Y_L+Y_L+Y_C+Y_C            // Admittance(mho)
Y_23 = -Y_L                       // Admittance(mho)
Y_31 = Y_13                       // Admittance(mho)
Y_32 = Y_23                       // Admittance(mho)
Y_33 = Y_L+Y_L+Y_C+Y_C            // Admittance(mho)
Y_bus = [[Y_11, Y_12, Y_13],
         [Y_21, Y_22, Y_23],
         [Y_31, Y_32, Y_33]]     // Bus admittance matrix
S_11 = conj(Y_bus(1,1:1))
S_12 = conj(Y_bus(1,2:2))
S_13 = conj(Y_bus(1,3:3))
S_21 = S_12
S_22 = conj(Y_bus(2,2:2))
S_23 = conj(Y_bus(2,3:3))
S_31 = S_13
S_32 = S_23
S_33 = conj(Y_bus(3,3:3))

// Results
disp("PART II - EXAMPLE : 9.7 : SOLUTION :-")
printf("\nPower flow expressions are:")
printf("\nS_1 = %.1fj|V_1|^2 %.1fjV_1V_2* %.1fjV_3*", imag(S_11),imag(S_12),imag(S_13))
printf("\nS_2 = %.1fjV_2V_1* + %.1fj|V_2|^2 %.1fjV_2V_3*", imag(S_21),imag(S_22),imag(S_23))
printf("\nS_3 = %.1fjV_3V_1* %.1fjV_3V_2* + %.1fj|V_3|^2", imag(S_31),imag(S_32),imag(S_33))
