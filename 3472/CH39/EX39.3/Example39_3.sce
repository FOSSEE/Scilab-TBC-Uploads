// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.3 :
// Page number 680-681
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 400.0     // IM voltage(V)
s_fl = 5.0    // Full-load slip(%)
I_fl = 20.0   // Full load current drawn from supply by IM(A)
Z = 2.5       // Impedance per phase(ohm)
I_max = 50.0  // Maximum current drawn(A)

// Calculations
V_phase = V/3**0.5                   // Normal phase voltage(V)
P = (100**2*I_max*Z/V_phase)**0.5    // Tapping to be provided to auto-transformer(%)
I_s = I_max/(P/100)                  // Starting current taken by motor(A)
T_s_fl = (I_s/I_fl)**2*s_fl/100      // Starting torque in terms of full-load torque
T_s_fl_R = (I_max/I_fl)**2*s_fl/100  // Starting torque in terms of full-load torque when a resistor is used

// Results
disp("PART IV - EXAMPLE : 1.3 : SOLUTION :-")
printf("\nTapping to be provided on an auto-transformer, P = %.1f percent", P)
printf("\nStarting torque in terms of full-load torque, T_s = %.3f*T_fl ", T_s_fl)
printf("\nStarting torque in terms of full-load torque if a resistor were used in series, T_s = %.4f*T_fl ", T_s_fl_R)
