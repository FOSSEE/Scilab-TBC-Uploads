// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.13 :
// Page number 304
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0           // Frequency(Hz)
P = 4.0            // Number of poles
alpha = 200.0      // Acceleration(°/sec^2)
alpha_rad = 3.49   // Acceleration(rad/sec^2)
n = 10.0           // Number of cycle

// Calculations
t = 1/f*n                                // Time(sec)
delta_rel = ((alpha_rad*2)**0.5*0.5)**2  // Relation of change in rotor angle with time(rad)
delta = delta_rel*t**2                   // Change in torque angle(rad)
delta_deg = delta*180/%pi                // Change in torque angle in that period(°)
rpm_rad = (alpha_rad*2*delta)**0.5       // r.p.m(rad/sec)
rpm = rpm_rad*60.0/(%pi*P)               // r.p.m
speed_rotor = (120*f/P)+rpm              // Rotor speed at the end of 10 cycles(r.p.m)

// Results
disp("PART II - EXAMPLE : 10.13 : SOLUTION :-")
printf("\nChange in torque angle in that period, δ = %.4f rad = %.f elect degree", delta,delta_deg)
printf("\nRotor speed at the end of 10 cycles = %.2f r.p.m", speed_rotor)
