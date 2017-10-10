// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 5: ELECTRIC TRACTION-SPEED TIME CURVES AND MECHANICS OF TRAIN MOVEMENT

// EXAMPLE : 5.9 :
// Page number 783
clear ; clc ; close ; // Clear the work space and console

// Given data
V_A = 48.0       // Speed(kmph)
t_1 = 24.0       // Time taken to accelerate from rest to speed(sec)
t_2 = 69.0       // Coasting time(sec)
r = 58.0         // Constant resistance(N/tonne)
beta = 3.3       // Retardation(km phps)
t_3 = 11.0       // Retardation time(sec)
t_iii_a = 20.0   // Station stop time(sec)
t_iii_b = 15.0   // Station stop time(sec)
I = 10.0         // Rotational inertia(%)

// Calculations
alpha = V_A/t_1                                                   // Acceleration(km phps)
V_B = beta*t_3                                                    // Speed at B(km phps)
beta_c = (V_A-V_B)/t_2                                            // Retardation during coasting(km phps)
distance_acc = 1.0/2*t_1*V_A/3600                                 // Distance covered during acceleration(km)
distance_coasting = (V_A**2-V_B**2)/(2*beta_c*3600)               // Distance covered during coasting(km)
distance_braking = t_3*V_B/(3600*2)                               // Distance covered during braking(km)
distance_total = distance_acc+distance_coasting+distance_braking  // Total distance(km)
speed_iii_a = distance_total*3600/(t_1+t_2+t_3+t_iii_a)           // Scheduled speed with a stop of 20 sec(kmph)
speed_iii_b = distance_total*3600/(t_1+t_2+t_3+t_iii_b)           // Scheduled speed with a stop of 15 sec(kmph)

// Results
disp("PART IV - EXAMPLE : 5.9 : SOLUTION :-")
printf("\nCase(i)  : Acceleration, α = %.f km phps", alpha)
printf("\nCase(ii) : Coasting retardation, β_c = %.2f km phps", beta_c)
printf("\nCase(iii): Scheduled speed with a stop of 20 seconds = %.2f kmph", speed_iii_a)
printf("\n           Scheduled speed with a stop of 15 seconds = %.2f kmph\n", speed_iii_b)
printf("\nNOTE: ERROR: Calculation mistakes in the textbook solution")
