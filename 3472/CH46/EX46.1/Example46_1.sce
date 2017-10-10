// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 8: BRAKING

// EXAMPLE : 8.1 :
// Page number 806
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 525.0    // Voltage of motor(V)
I_1 = 50.0   // Current(A)
T_1 = 216.0  // Torque(N-m)
I_2 = 70.0   // Current(A)
T_2 = 344.0  // Torque(N-m)
I_3 = 80.0   // Current(A)
T_3 = 422.0  // Torque(N-m)
I_4 = 90.0   // Current(A)
T_4 = 500.0  // Torque(N-m)
V_m = 26.0   // Speed(kmph)
R_b = 5.5    // Resistance of braking rheostat(ohm)
R_m = 0.5    // Resistance of motor(ohm)

// Calculations
I = 75.0                // Current drawn at 26 kmph(A)
back_emf = V-I*R_m      // Back emf of the motor(V)
R_t = R_b+R_m           // Total resistance(ohm)
I_del = back_emf/R_t    // Current delivered(A)
T_b = T_3*I_del/I_3     // Braking torque(N-m)

// Results
disp("PART IV - EXAMPLE : 8.1 : SOLUTION :-")
printf("\nBraking torque = %.f N-m", T_b)
