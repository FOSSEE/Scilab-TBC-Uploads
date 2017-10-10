// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 6: MOTORS FOR ELECTRIC TRACTION

// EXAMPLE : 6.3 :
// Page number 790
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 650.0      // Voltage supply(V)
r_A = 45.0     // Radius of driving wheel(cm)
r_B = 43.0     // Radius of driving wheel(cm)
N_A = 400.0    // Speed(rpm)
drop = 10.0    // Voltage drop(%)

// Calculations
rho = r_B/r_A
IR = drop*V/100                 // Voltage drop(V)
V_A = (rho*(V-IR)+IR)/(1+rho)   // Voltage(V)
V_B = V-V_A                     // Voltage(V)
N_A_A = N_A*(V_A-IR)/(V-IR)     // N"_A(rpm)
N_B_B = N_A_A*r_A/r_B           // N"_B(rpm)

// Results
disp("PART IV - EXAMPLE : 6.3 : SOLUTION :-")
printf("\nSpeed of first motor when connected in series, N_A = %.f rpm", N_A_A)
printf("\nSpeed of second motor when connected in series, N_B = %.f rpm\n", N_B_B)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
