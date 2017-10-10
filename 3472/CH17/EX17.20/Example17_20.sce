// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.20 :
// Page number 305
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA = 50.0           // Rating of alternator(MVA)
P = 4.0              // Number of poles
f = 50.0             // Frequency(Hz)
KE = 150.0           // Kinetic energy stored in rotor(MJ)
P_m = 25.0           // Machine input(MW)
P_e = 22.5           // Developed power(MW)
n = 10.0             // Number of cycles

// Calculations
P_a = P_m-P_e            // Accelerating power(MW)
H = KE/MVA               // Inertia constant(MJ/MVA)
G = MVA
M_deg = G*H/(180*f)      // Angular momentum(MJ-sec/elect.degree)
M = G*H/(%pi*f)          // Angular momentum(MJ-sec/rad)
acceleration = P_a/M     // Accelerating power(rad/sec^2)
t = 1/f*n                // Time(sec)
delta = 1.309*t**2       // Term in δ

// Results
disp("PART II - EXAMPLE : 10.20 : SOLUTION :-")
printf("\nAccelerating power = %.3f rad/sec^2", acceleration)
printf("\nNew power angle after 10 cycles, δ = (%.3f + δ_0) rad", delta)
