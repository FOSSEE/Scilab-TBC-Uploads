// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.30 :
// Page number 710
clear ; clc ; close ; // Clear the work space and console

// Given data
J = 1270.0     // Moment of inertia of fly-wheel(kg-m^2)
N = 500.0      // Speed(rpm)
hp = 50.0      // Motor rating(hp)

// Calculations
g = 9.81
T = hp*746*60/(2*%pi*N*g)         // Full load torque of motor(kg-m)
T_m = 2*T                         // Accelerating torque(kg-m)
alpha = T_m*g/J                   // Angular acceleration(rad/sec^2)
t = 2*%pi*N/(60*alpha)            // Time taken to accelerate a fly-wheel(sec)

// Results
disp("PART IV - EXAMPLE : 1.30 : SOLUTION :-")
printf("\nTime taken to accelerate a fly-wheel, t = %.1f sec", t)
