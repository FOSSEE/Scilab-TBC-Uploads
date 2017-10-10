// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.2 :
// Page number 270
clear ; clc ; close ; // Clear the work space and console

// Given data
x_s = 0.85     // Reactance(p.u)
x_T1 = 0.157   // Reactance(p.u)
x_T2 = 0.157   // Reactance(p.u)
x_l1 = 0.35    // Reactance(p.u)
x_l2 = 0.35    // Reactance(p.u)
E = 1.50       // Sending end voltage(p.u)
V_L = 1.0      // Load voltage(p.u)
P_0 = 1.0      // Stable power output(p.u)

// Calculations
x = x_s+x_T1+x_T2+(x_l1/2)         // Total reactance(p.u)
P_max = E*V_L/x                    // Maximum power limit(p.u)
M = (P_max-P_0)/P_max*100          // Steady state stability margin(%)
V_Lmin = P_0*x/E                   // Minimum value of V_L(p.u)
E_min = P_0*x/V_L                  // Minimum value of E(p.u)

// Results
disp("PART II - EXAMPLE : 10.2 : SOLUTION :-")
printf("\nMinimum value of |E|, |E_min| = %.3f p.u", E_min)
printf("\nMinimum value of |V_L|, |V_Lmin| = %.3f p.u", V_Lmin)
printf("\nMaximum power limit, P_0 = %.2f p.u", P_max)
printf("\nSteady state stability margin, M = %.1f percent", M)
