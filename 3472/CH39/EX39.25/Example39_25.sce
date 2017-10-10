// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.25 :
// Page number 706-707
clear ; clc ; close ; // Clear the work space and console

// Given data
kW = 20.0        // Motor output(kW)
theta_1 = 50.0   // Temperature rise not to be exceeded on overload(°C)
t_1 = 1.0        // Time on overload(hour)
theta_2 = 30.0   // Temperature rise on full-load(°C)
t_2 = 1.0        // Time on full-load(hour)
theta_3 = 40.0   // Temperature rise on full-load(°C)
t_3 = 2.0        // Time on full-load(hour)

// Calculations
e_lambda = 1.0/3                 // Obtained directly from textbook
theta_f = theta_2/(1-e_lambda)   // θ_f(°C)
theta_f1 = theta_1/(1-e_lambda)  // θ'_f(°C)
P = (theta_f1/theta_f)**0.5*kW   // Maximum overload that can be carried by the motor(kW)

// Results
disp("PART IV - EXAMPLE : 1.25 : SOLUTION :-")
printf("\nMaximum overload that can be carried by the motor, P = %.1f kW", P)
