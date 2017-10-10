// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.4 :
// Page number 271
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 400.0          // Voltage(kV)
L = 220.0          // Line length(km)
P = 0.58           // Initial real power transfer(p.u)
PF = 0.85          // Lagging power factor
V_L = 1.00         // Load bus voltage(p.u)
x_d = 0.460        // Reactance(p.u)
x_T1 = 0.200       // Reactance(p.u)
x_T2 = 0.15        // Reactance(p.u)
x_line = 0.7       // Reactance(p.u)

// Calculations
x = x_d+x_T1+x_T2+(x_line/2)                  // Net reactance(p.u)
phi = acosd(PF)                               // Φ(°)
Q = P*tand(phi)                               // Reactive power(p.u)
E = ((V_L+(Q*x/V_L))**2+(P*x/V_L)**2)**0.5    // Excitation voltage of generator(p.u)
P_max = E*V_L/x                               // Maximum power transfer(p.u)
M = (P_max-P)/P_max*100                       // Steady state stability margin(%)

// Results
disp("PART II - EXAMPLE : 10.4 : SOLUTION :-")
printf("\nMaximum power transfer, P_max = %.2f p.u", P_max)
printf("\nStability margin, M = %.f percent", M)
