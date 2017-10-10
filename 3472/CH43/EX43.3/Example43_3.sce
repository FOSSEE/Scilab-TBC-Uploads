// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 5: ELECTRIC TRACTION-SPEED TIME CURVES AND MECHANICS OF TRAIN MOVEMENT

// EXAMPLE : 5.3 :
// Page number 778-779
clear ; clc ; close ; // Clear the work space and console

// Given data
speed = 25.0       // Scheduled speed(kmph)
D = 800.0/1000     // Distance between 2 stations(km)
t = 20.0           // Time of stop(sec)
V_m_per = 20.0     // Maximum speed higher than(%)
beta = 3.0         // Retardation(km phps)

// Calculations
t_total = D*3600/speed                                 // Total time of run including stop(sec)
T = t_total-t                                          // Actual time for run(sec)
V_a = D/T*3600                                         // Average speed(kmph)
V_m = (100+V_m_per)*V_a/100                            // Maximum speed(kmph)
alpha = 1/((7200.0*D/V_m**2*((V_m/V_a)-1))-(1/beta))   // Value of acceleration(km phps)

// Results
disp("PART IV - EXAMPLE : 5.3 : SOLUTION :-")
printf("\nRate of acceleration required to operate this service, α = %.2f km phps", alpha)
