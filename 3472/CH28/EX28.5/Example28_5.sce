// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 2: FAULT LIMITING REACTORS

// EXAMPLE : 2.5 :
// Page number 481-482
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA_base = 10000.0   // Base kVA
V = 6.6*10**3        // Voltage of generator(V)
X_A = 7.5            // Reactance of generator A(%)
X_B = 7.5            // Reactance of generator B(%)
X_C = 10.0           // Reactance of generator C(%)
X_D = 10.0           // Reactance of generator D(%)
X_E = 8.0            // Reactance of reactor E(%)
X_F = 8.0            // Reactance of reactor F(%)
X_G = 6.5            // Reactance of reactor G(%)
X_H = 6.5            // Reactance of reactor H(%)

// Calculations
Z_1 = X_B*X_C/(X_H+X_B+X_C)            // Impedance(%). Fig E2.7
Z_2 = X_H*X_C/(X_H+X_B+X_C)            // Impedance(%). Fig E2.7
Z_3 = X_B*X_H/(X_H+X_B+X_C)            // Impedance(%). Fig E2.7
Z_4 = Z_2+X_F                          // Impedance(%). Fig E2.8 & Fig 2.9
Z_5 = Z_3+X_E                          // Impedance(%). Fig E2.8 & Fig 2.9
Z_6 = X_D*Z_1/(X_D+Z_1+Z_4)            // Impedance(%). Fig E2.10
Z_7 = X_D*Z_4/(X_D+Z_1+Z_4)            // Impedance(%). Fig E2.10
Z_8 = Z_1*Z_4/(X_D+Z_1+Z_4)            // Impedance(%). Fig E2.10
Z_9 = Z_7+X_G                          // Impedance(%). Fig E2.11 & Fig 2.12
Z_10 = Z_8+Z_5                         // Impedance(%). Fig E2.11 & Fig 2.12
Z_11 = Z_9*Z_10/(Z_9+Z_10)             // Impedance(%). Fig 2.12 & Fig 2.13
Z_12 = Z_6+Z_11                        // Impedance(%). Fig 2.13
Z_eq = X_A*Z_12/(X_A+Z_12)             // Final Impedance(%). Fig 2.13 & Fig 2.14
MVA_SC = kVA_base*100/(Z_eq*1000)      // Instantaneous symmetrical short-circuit MVA for a fault at X(MVA)

// Results
disp("PART III - EXAMPLE : 2.5 : SOLUTION :-")
printf("\nInstantaneous symmetrical short-circuit MVA for a fault at X = %.f MVA \n", MVA_SC)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more approximation in the textbook")
