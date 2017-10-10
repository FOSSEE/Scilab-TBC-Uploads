// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.3 :
// Page number 270-271
clear ; clc ; close ; // Clear the work space and console

// Given data
E_1 = 1.25     // Sending end voltage(p.u)
x_d = 1.0      // Reactance(p.u)
x_T1 = 0.2     // Reactance(p.u)
x_l1 = 1.0     // Reactance(p.u)
x_l2 = 1.0     // Reactance(p.u)
x_T2 = 0.2     // Reactance(p.u)
E_2 = 1.0      // Receiving end voltage(p.u)
x_L = 1.0      // Shunt inductor reactance(p.u)
x_C = 1.0      // Shunt capacitor reactance(p.u)

// Calculations
// Case(a)
Z_1_a = x_d+x_T1+(x_l1/2.0)              // Reactance(p.u)
Z_2_a = x_T2+x_d                         // Reactance(p.u)
Z_3_a = x_L                              // Reactance(p.u)
Z_a = Z_1_a+Z_2_a+(Z_1_a*Z_2_a/Z_3_a)    // Transfer reactance(p.u)
P_max_1 = E_1*E_2/Z_a                    // Maximum power transfer if shunt inductor is connected at bus 2(p.u)
// Case(b)
Z_1_b = x_d+x_T1+(x_l1/2.0)              // Reactance(p.u)
Z_2_b = x_T2+x_d                         // Reactance(p.u)
Z_3_b = -x_C                             // Reactance(p.u)
Z_b = Z_1_b+Z_2_b+(Z_1_b*Z_2_b/Z_3_b)    // Transfer reactance(p.u)
P_max_2 = E_1*E_2/Z_b                    // Maximum power transfer if shunt capacitor is connected at bus 2(p.u)

// Results
disp("PART II - EXAMPLE : 10.3 : SOLUTION :-")
printf("\nCase(a): Maximum power transfer if shunt inductor is connected at bus 2, P_max1 = %.3f p.u", P_max_1)
printf("\nCase(b): Maximum power transfer if shunt capacitor is connected at bus 2, P_max2 = %.2f p.u", P_max_2)
