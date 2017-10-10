// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 5: ELECTRIC TRACTION-SPEED TIME CURVES AND MECHANICS OF TRAIN MOVEMENT

// EXAMPLE : 5.4 :
// Page number 779
clear ; clc ; close ; // Clear the work space and console

// Given data
D = 2.0          // Distance between 2 stations(km)
V_a = 40.0       // Average speed(kmph)
V_1 = 60.0       // Maximum speed limitation(kph)
alpha = 2.0      // Acceleration(km phps)
beta_c = 0.15    // Coasting retardation(km phps)
beta = 3.0       // Braking retardation(km phps)

// Calculations
t_1 = V_1/alpha                                        // Time for acceleration(sec)
T = 3600*D/V_a                                         // Actual time of run(sec)
V_2 = (T-t_1-(V_1/beta_c))*beta*beta_c/(beta_c-beta)   // Speed at the end of coasting period(kmph)
t_2 = (V_1-V_2)/beta_c                                 // Coasting period(sec)
t_3 = V_2/beta                                         // Braking period(sec)

// Results
disp("PART IV - EXAMPLE : 5.4 : SOLUTION :-")
printf("\nDuration of acceleration, t_1 = %.f sec", t_1)
printf("\nDuration of coasting, t_2 = %.f sec", t_2)
printf("\nDuration of braking, t_3 = %.f sec", t_3)
