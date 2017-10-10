// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 5: ELECTRIC TRACTION-SPEED TIME CURVES AND MECHANICS OF TRAIN MOVEMENT

// EXAMPLE : 5.2 :
// Page number 778
clear ; clc ; close ; // Clear the work space and console

// Given data
V_m = 65.0        // Maximum speed(kmph)
t = 30.0          // Time of stop(sec)
speed = 43.5      // Scheduled speed(kmph)
alpha = 1.3       // Acceleration(km phps)
D = 3.0           // Distance between 2 stops(km)

// Calculations
t_total = D*3600/speed                                 // Total time of run including stop(sec)
T = t_total-t                                          // Actual time for run(sec)
V_a = D/T*3600                                         // Average speed(kmph)
beta = 1/((7200.0*D/V_m**2*((V_m/V_a)-1))-(1/alpha))   // Value of retardation(km phps)

// Results
disp("PART IV - EXAMPLE : 5.2 : SOLUTION :-")
printf("\nValue of retardation, β = %.3f km phps\n", beta)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
printf("\n      ERROR: β unit is km phps & not km phps as mentioned in textbook solution")
