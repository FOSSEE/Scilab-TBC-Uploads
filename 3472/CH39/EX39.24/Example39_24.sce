// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.24 :
// Page number 706
clear ; clc ; close ; // Clear the work space and console

// Given data
theta_f1 = 40.0     // Temperature rise(°C)
T = 100.0           // Heating time constant(min)
rated_2 = 2.0       // Motor at twice the continuously rating

// Calculations
loss_cu = 2.0**2                         // Copper loss at twice full load in terms of W
loss_total = loss_cu+1                   // Total losses at full load in terms of W
theta_f2 = theta_f1*loss_total/rated_2   // θ_f2(°C)
t = log(1-(theta_f1/theta_f2))*(-T)      // Time for which motor can run at twice the continuously rated output without overheating(min)

// Results
disp("PART IV - EXAMPLE : 1.24 : SOLUTION :-")
printf("\nMotor can run at twice the continuously rated output without overheating for time, t = %.f min", t)
