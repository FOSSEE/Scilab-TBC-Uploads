// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.28 :
// Page number 710
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 440.0      // DC shunt motor voltage(V)
hp = 50.0      // Motor rating(hp)
N = 600.0      // Speed(rpm)
I = 80.0       // Current at full-load(A)
I_1 = 1.1      // Lower current limit in terms of full current
I_2 = 1.5      // Upper current limit in terms of full current
J = 20.0       // Moment of inertia(kg-m^2)

// Calculations
T = hp*746*60/(2*%pi*N)       // Full load torque of motor(N-m)
T_avg_start = (I_1+I_2)/2*T   // Average starting torque(N-m)
T_g = ((I_1+I_2)/2-1)*T       // Torque available for acceleration(N-m)
alpha = T_g/J                 // Angular acceleration(rad/sec^2)
t = 2*%pi*N/(60*alpha)        // Time taken to accelerate the motor(sec)

// Results
disp("PART IV - EXAMPLE : 1.28 : SOLUTION :-")
printf("\nTime taken to accelerate the motor to rated speed against full load torque, t = %.2f sec\n", t)
printf("\nNOTE: ERROR: Calculation mistake in the textbook solution")
