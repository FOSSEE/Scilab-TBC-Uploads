// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.29 :
// Page number 710
clear ; clc ; close ; // Clear the work space and console

// Given data
hp = 50.0        // Motor rating(hp)
N = 600.0        // Speed(rpm)
energy = 276.0   // Stored energy(kg-m/hp)

// Calculations
g = 9.81
T = hp*746*60/(2*%pi*N*g)           // Full load torque of motor(kg-m)
J = hp*energy*2*g/(2*%pi*N/60)**2   // Moment of inertia(kg-m^2)
alpha = T*g/J                       // Angular acceleration(rad/sec^2)
t = 2*%pi*N/(60*alpha)              // Time taken to accelerate the motor to rated speed(sec)

// Results
disp("PART IV - EXAMPLE : 1.29 : SOLUTION :-")
printf("\nTime taken to accelerate the motor to rated speed, t = %.2f sec", t)
