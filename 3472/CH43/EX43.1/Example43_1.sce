// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 5: ELECTRIC TRACTION-SPEED TIME CURVES AND MECHANICS OF TRAIN MOVEMENT

// EXAMPLE : 5.1 :
// Page number 778
clear ; clc ; close ; // Clear the work space and console

// Given data
speed = 45.0      // Scheduled speed(kmph)
D = 1.5           // Distance between 2 stops(km)
t = 20.0          // Time of stop(sec)
alpha = 2.4       // Acceleration(km phps)
beta = 3.2        // Retardation(km phps)

// Calculations
t_total = D*3600/speed                   // Total time(sec)
T = t_total-t                            // Actual time for run(sec)
k = (alpha+beta)/(alpha*beta)            // Constant
V_m = (T/k)-((T/k)**2-(7200*D/k))**0.5   // Maximum speed over the run(kmph)

// Results
disp("PART IV - EXAMPLE : 5.1 : SOLUTION :-")
printf("\nMaximum speed over the run, V_m = %.f kmph", V_m)
