// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 4: OVERHEAD LINE INSULATORS

// EXAMPLE : 4.4 :
// Page number 184-185
clear ; clc ; close ; // Clear the work space and console

// Given data
V_3 = 17.5          // Voltage across line unit(kV)
c = 1.0/8           // Shunt capacitance = 1/8 of insulator capacitance
n = 3.0             // Number of insulators

// Calculations
K = c                       // String constant
V_1 = V_3/(1+3*K+K**2)      // Voltage across top unit(kV)
V_2 = (1+K)*V_1             // Voltage across middle unit(kV)
V = V_1+V_2+V_3             // Voltage between line & earth(kV)
eff = V*100/(n*V_3)         // String efficiency(%)

// Results
disp("PART II - EXAMPLE : 4.4 : SOLUTION :-")
printf("\nLine to neutral voltage, V = %.2f kV", V)
printf("\nString efficiency = %.2f percent", eff)
