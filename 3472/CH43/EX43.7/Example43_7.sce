// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 5: ELECTRIC TRACTION-SPEED TIME CURVES AND MECHANICS OF TRAIN MOVEMENT

// EXAMPLE : 5.7 :
// Page number 782
clear ; clc ; close ; // Clear the work space and console

// Given data
W = 203.0      // Weight of motor-coach train(tonne)
no = 4.0       // Number of motors
T = 5130.0     // Shaft torque(N-m)
V_m = 42.0     // Maximum speed(kmph)
G = 100.0/250  // Gradient
gamma = 3.5    // Gear ratio
n = 0.93       // Gear efficiency
D = 91.5/100   // Wheel diameter(m)
r = 45.0       // Train resistance(N/tonne)
I = 10.0       // Rotational inertia(%)

// Calculations
W_e = W*(100+I)/100                     // Accelerating weight of train(tonne)
F_t = n*4*T*2*gamma/D                   // Tractive effort(N)
alpha = (F_t-W*r-98.1*W*G)/(277.8*W_e)  // Acceleration(km phps)
t_1 = V_m/alpha                         // Time taken by train to attain speed(sec)

// Results
disp("PART IV - EXAMPLE : 5.7 : SOLUTION :-")
printf("\nTime taken by train to attain speed, t_1 = %.1f sec", t_1)
