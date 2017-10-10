// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.28 :
// Page number 310
clear ; clc ; close ; // Clear the work space and console

// Given data
sin_delta_0 = 0.45     // Supplying percent of peak power capacity before fault
x = 4.0                // Reactance under fault increased
gamma_2 = 0.7          // Peak power delivered after fault clearance

// Calculations
delta_0 = asin(sin_delta_0)                         // δ_0(radians)
delta_0_degree = delta_0*180/%pi                    // δ_0(°)
gamma_1 = 1.0/x                                     // γ_1
delta_m = %pi-asin(sin_delta_0/(gamma_2))           // δ_m(radians)
delta_m_degree = delta_m*180/%pi                    // δ_m(°)
delta_c = acosd(1.0/(gamma_2-gamma_1)*((delta_m-delta_0)*sin(delta_0)+(gamma_2*cos(delta_m)-gamma_1*cos(delta_0)))) // Clearing angle(°)

// Results
disp("PART II - EXAMPLE : 10.28 : SOLUTION :-")
printf("\nCritical clearing angle, δ_c = %.f° ", delta_c)
