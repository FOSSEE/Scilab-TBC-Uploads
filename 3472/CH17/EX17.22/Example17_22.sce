// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.22 :
// Page number 306
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0        // Frequency(Hz)
P = 4.0         // Number of poles
G = 20.0        // Rating of turbo-generator(MVA)
V = 13.2        // Voltage(kV)
H = 9.0         // Inertia constant(kW-sec/kVA)
P_s = 20.0      // Input power less rotational loss(MW)
P_e = 15.0      // Output power(MW)
n = 10.0        // Number of cycles

// Calculations
KE = G*H                         // Kinetic energy stored(MJ)
M = G*H/(180*f)                  // Angular momentum(MJ-sec/elect.degree)
P_a = P_s-P_e                    // Accelerating power(MW)
alpha = P_a/M                    // Acceleration(elect.degree/sec^2)
alpha_deg = alpha/2.0            // Acceleration(degree/sec^2)
alpha_rpm = 60.0*alpha_deg/360   // Acceleration(rpm/sec)
t = 1.0/f*n                      // Time(sec)
delta = 1.0/2*alpha*t**2         // Change in torque angle(elect.degree)
N_s = 120*f/P                    // Synchronous speed(rpm)
speed = N_s+alpha_rpm*t          // Speed at the end of 10 cycles(rpm)

// Results
disp("PART II - EXAMPLE : 10.22 : SOLUTION :-")
printf("\nChange in torque angle in that period, δ = %.f elect degrees.", delta)
printf("\nSpeed in rpm at the end of 10 cycles = %.2f rpm", speed)
