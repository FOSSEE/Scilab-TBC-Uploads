// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 5: ELECTRIC TRACTION-SPEED TIME CURVES AND MECHANICS OF TRAIN MOVEMENT

// EXAMPLE : 5.6 :
// Page number 782
clear ; clc ; close ; // Clear the work space and console

// Given data
W = 254.0      // Weight of motor-coach train(tonne)
no = 4.0       // Number of motor
t_1 = 20.0     // Time(sec)
V_m = 40.25    // Maximum speed(kmph)
G = 1.0        // Gradient(%)
gamma = 3.5    // Gear ratio
n = 0.95       // Gear efficiency
D = 91.5/100   // Wheel diameter(m)
r = 44.0       // Train resistance(N/tonne)
I = 10.0       // Rotational inertia(%)

// Calculations
W_e = W*(100+I)/100                  // Accelerating weight of train(tonne)
alpha = V_m/t_1                      // Acceleration(km phps)
F_t = 277.8*W_e*alpha+W*r+98.1*W*G   // Tractive effort(N)
T = F_t*D/(2*n*gamma)                // Torque developed(N-m)
T_each = T/no                        // Torque developed by each motor(N-m)

// Results
disp("PART IV - EXAMPLE : 5.6 : SOLUTION :-")
printf("\nTorque developed by each motor = %.f N-m\n", T_each)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here & more approximation in textbook")
printf("\n      ERROR: W = 254 tonne, not 256 tonne as mentioned in textbook problem statement")
