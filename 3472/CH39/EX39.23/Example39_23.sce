// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.23 :
// Page number 706
clear ; clc ; close ; // Clear the work space and console

// Given data
hp = 25.0         // Motor rating(hp)
T = 100.0/60      // Heating time constant(hour)
theta = 40.0      // Temperature rise(°C)
t = 0.5           // Time(hour)
n = 0.85          // Motor maximum efficiency

// Calculations
output = hp*735.5/1000                          // Output of motor(kW)
output_max = output*n                           // Power at maximum efficiency(kW)
theta_f2 = theta/(1-exp(-t/T))                  // θ_f2(°C)
loss = 1+(output/output_max)**2                 // Losses at 18.4 kW output in terms of W
P = ((theta_f2/theta*loss)-1)**0.5*output_max   // Half-hour rating of motor(kW)
P_hp = P*1000/735.5                             // Half-hour rating of motor(hp)

// Results
disp("PART IV - EXAMPLE : 1.23 : SOLUTION :-")
printf("\nHalf-hour rating of motor, P = %.f kW = %.1f hp (metric)\n", P,P_hp)
printf("\nNOTE: ERROR: Calculation mistake from final temperature rise onwards in textbook")
