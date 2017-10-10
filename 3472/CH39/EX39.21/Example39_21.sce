// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.21 :
// Page number 705
clear ; clc ; close ; // Clear the work space and console

// Given data
t = 1.0          // Time(hour)
hp = 15.0        // Motor rating(hp)
T = 2.0          // Time constant(hour)
theta_f = 40.0   // Temperature rise(°C)

// Calculations
P = (1.0/(1-exp(-t/T)))**0.5*hp     // One-hour rating of motor(hp)

// Results
disp("PART IV - EXAMPLE : 1.21 : SOLUTION :-")
printf("\nOne-hour rating of motor, P = %.f hp\n", P)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more approximation in the textbook solution")
