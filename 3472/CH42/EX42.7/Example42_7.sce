// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 4: ILLUMINATION

// EXAMPLE : 4.7 :
// Page number 755
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 9.15       // Lamp space(m)
h = 4.575      // Height(m)
P = 100.0      // Power(candle)

// Calculations
theta_3_max = 0                                                                          // θ(°)
cos_theta_3_max_cubic = cosd(theta_3_max)**3
theta_4_max = atand(2)                                                                   // θ(°)
cos_theta_4_max_cubic = cosd(theta_4_max)**3
theta_5_max = atand(4)                                                                   // θ(°)
cos_theta_5_max_cubic = cosd(theta_5_max)**3
theta_6_max = atand(6)                                                                   // θ(°)
cos_theta_6_max_cubic = cosd(theta_6_max)**3
I_max = P/h**2*(cos_theta_3_max_cubic+2*cos_theta_4_max_cubic+2*cos_theta_5_max_cubic+2*cos_theta_6_max_cubic)   // Max illumination(lux)
theta_4_min = atand(1)                                                                   // θ(°)
cos_theta_4_min_cubic = cosd(theta_4_min)**3
theta_5_min = atand(3)                                                                   // θ(°)
cos_theta_5_min_cubic = cosd(theta_5_min)**3
theta_6_min = atand(5)                                                                   // θ(°)
cos_theta_6_min_cubic = cosd(theta_6_min)**3
I_min = P/h**2*2*(cos_theta_4_min_cubic+cos_theta_5_min_cubic+cos_theta_6_min_cubic)     // Minimum illumination(lux)

// Results
disp("PART IV - EXAMPLE : 4.7 : SOLUTION :-")
printf("\nMaximum illumination on the floor along the centre line = %.2f lux", I_max)
printf("\nMinimum illumination on the floor along the centre line = %.2f lux", I_min)
