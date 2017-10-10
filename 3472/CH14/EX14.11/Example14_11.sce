// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.11 :
// Page number 216-217
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 85.0          // Line Voltage(kV)
g_max = 55.0      // Maximum stress(kV/cm)

// Calculations
V_1 = 0.632*V         // Intersheath potential(kV)
d = 0.736*V/g_max     // Core diameter(cm)
d_1 = 2*V/g_max       // Intersheath diameter(cm)
D = 3.76*V/g_max      // Overall diameter(cm)
d_un = 2*V/g_max      // Core diameter of ungraded cable(cm)
D_un = 2.718*d_1      // Overall diameter of ungraded cable(cm)

// Results
disp("PART II - EXAMPLE : 7.11 : SOLUTION :-")
printf("\nDiameter of intersheath, d_1 = %.2f cm", d_1)
printf("\nVoltage of intersheath, V_1 = %.2f kV, to neutral", V_1)
printf("\nConductor diameter of graded cable, d = %.2f cm", d)
printf("\nOutside diameter of graded cable, D = %.2f cm", D)
printf("\nConductor diameter of ungraded cable, d = %.2f cm", d_un)
printf("\nOutside diameter of ungraded cable, D = %.2f cm", D_un)
