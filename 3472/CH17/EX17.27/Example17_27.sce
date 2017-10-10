// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.27 :
// Page number 309-310
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0               // Frequency(Hz)
P_m = 1.0              // Power delivered(p.u)
P_max = 1.8            // Maximum power(p.u)
gamma_1_P_max = 0.4    // Reduced maximum power after fault(p.u)
gamma_2_P_max = 1.30   // Maximum power after fault clearance(p.u)

// Calculations
delta_0 = asin(P_m/P_max)                              // δ_0(radians)
delta_0_degree = delta_0*180/%pi                       // δ_0(°)
delta_f = %pi-asin(P_m/(gamma_2_P_max))                // δ_1(radians)
delta_f_degree = delta_f*180/%pi                       // δ_1(°)
gamma_1 = gamma_1_P_max/P_max                          // γ_1
gamma_2 = gamma_2_P_max/P_max                          // γ_2
delta_c = acosd(1.0/(gamma_2-gamma_1)*((delta_f-delta_0)*sin(delta_0)+(gamma_2*cos(delta_f)-gamma_1*cos(delta_0)))) // Clearing angle(°)

// Results
disp("PART II - EXAMPLE : 10.27 : SOLUTION :-")
printf("\nCritical angle, δ_c = %.2f° ", delta_c)
