// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.6 :
// Page number 682
clear ; clc ; close ; // Clear the work space and console

// Given data
hp = 10.0      // IM rating(hp)
V = 400.0      // IM voltage(V)
pf = 0.8       // Lagging power factor
n = 0.9        // Efficiency of IM
I_sc = 7.2     // Short-circuit current at 160V(A)
V_sc = 160.0   // Voltage at short-circuit(V)

// Calculations
I_fl = hp*746/(3**0.5*V*pf*n)   // Full-load line current(A)
I_sc_fv = V/V_sc*I_sc           // Short-circuit current at full voltage(A)
I_s = I_sc_fv/3.0               // Starting current with star-delta starter(A)
I_s_fl = I_s/I_fl               // Ratio of starting current to full load current

// Results
disp("PART IV - EXAMPLE : 1.6 : SOLUTION :-")
printf("\nRatio of starting current to full-load current, I_s/I_fl = %.1f \n", I_s_fl)
printf("\nNOTE: ERROR: Calculation mistake in final answer in textbook solution")
