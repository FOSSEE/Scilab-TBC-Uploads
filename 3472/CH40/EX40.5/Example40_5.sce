// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 2: HEATING AND WELDING

// EXAMPLE : 2.5 :
// Page number 728-729
clear ; clc ; close ; // Clear the work space and console

// Given data
V_2 = 12.0         // Secondary voltage(V)
P = 30.0*10**3     // Power(W)
PF = 0.5           // Power factor

// Calculations
I_2 = P/(V_2*PF)            // Secondary current(A)
Z_2 = V_2/I_2               // Secondary impedance(ohm)
R_2 = Z_2*PF                // Secondary resistance(ohm)
sin_phi = (1-PF**2)**0.5
X_2 = Z_2*sin_phi           // Secondary reactance(ohm)
h = R_2/X_2
H_m = h                     // Height up to which the crucible should be filled to obtain maximum heating effect in terms of H_c

// Results
disp("PART IV - EXAMPLE : 2.5 : SOLUTION :-")
printf("\nHeight up to which the crucible should be filled to obtain maximum heating effect, H_m = %.3f*H_c \n", H_m)
printf("\nNOTE: ERROR: Calculation mistake in textbook solution and P is 30 kW not 300 kW")
