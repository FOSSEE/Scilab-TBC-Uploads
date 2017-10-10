// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.34 :
// Page number 713
clear ; clc ; close ; // Clear the work space and console

// Given data
T_l = 150.0     // Load torque(kg-m)
t = 15.0        // Duration of load torque(sec)
T_m = 85.0      // Motor torque(kg-m)
N = 500.0       // Speed(rpm)
s_fl = 0.1      // Full-load slip

// Calculations
g = 9.81
slip = N*s_fl*2*%pi/60                  // Slip(rad/sec)
k = slip/T_m
T_0 = 0                                 // No-load torque(kg-m)
J = -g*t/(k*log((T_l-T_m)/(T_l-T_0)))   // Moment of inertia of flywheel(kg-m^2)

// Results
disp("PART IV - EXAMPLE : 1.34 : SOLUTION :-")
printf("\nInertia of flywheel required, J = %.f kg-m^2\n", J)
printf("\nNOTE: ERROR : Calculation mistake in the textbook solution")
