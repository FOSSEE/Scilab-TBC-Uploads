// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 18: POWER DISTRIBUTION SYSTEMS

// EXAMPLE : 18.1 :
// Page number 437
clear ; clc ; close ; // Clear the work space and console

// Given data
V_A = 225.0    // Potential at point A(V)
R_A = 5.0      // Resistance of line A(ohm)
V_B = 210.0    // Potential at point B(V)
R_B = 1.0      // Resistance of line B(ohm)
V_C = 230.0    // Potential at point C(V)
R_C = 1.0      // Resistance of line C(ohm)
V_D = 230.0    // Potential at point D(V)
R_D = 2.0      // Resistance of line D(ohm)
V_E = 240.0    // Potential at point E(V)
R_E = 2.0      // Resistance of line E(ohm)

// Calculations
V_0 = ((V_A/R_A)+(V_B/R_B)+(V_C/R_C)+(V_D/R_D)+(V_E/R_E))/((1/R_A)+(1/R_B)+(1/R_C)+(1/R_D)+(1/R_E))   // Potential at point O(V)
I_A = (V_A-V_0)/R_A        // Current leaving supply point A(A)
I_B = (V_B-V_0)/R_B        // Current leaving supply point B(A)
I_C = (V_C-V_0)/R_C        // Current leaving supply point C(A)
I_D = (V_D-V_0)/R_D        // Current leaving supply point D(A)
I_E = (V_E-V_0)/R_E        // Current leaving supply point E(A)

// Results
disp("PART II - EXAMPLE : 18.1 : SOLUTION :-")
printf("\nPotential of point O, V_0 = %.f V", V_0)
printf("\nCurrent leaving supply point A, I_A = %.f A", I_A)
printf("\nCurrent leaving supply point B, I_B = %.f A", I_B)
printf("\nCurrent leaving supply point C, I_C = %.f A", I_C)
printf("\nCurrent leaving supply point D, I_D = %.2f A", I_D)
printf("\nCurrent leaving supply point E, I_E = %.2f A", I_E)
