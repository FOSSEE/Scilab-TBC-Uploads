// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.22 :
// Page number 706
clear ; clc ; close ; // Clear the work space and console

// Given data
hp = 10.0                   // Motor rating(hp)
d = 0.7                     // Diameter of cylinder(m)
l = 1.0                     // Length of cylinder(m)
w = 380.0                   // Weight of motor(kgm)
heat_specific = 700.0       // Specific heat(J/kg/1°C)
heat_dissipation = 15.0     // Outer surface heat dissipation rate(W/sq.cm/°C)
n = 0.88                    // Efficiency

// Calculations
output = hp*735.5                                        // Output of motor(W)
loss = (1-n)/n*output                                    // Losses(W)
area_cooling = %pi*d*l                                   // Cooling surface area(sq.m)
theta_m = loss/(area_cooling*heat_dissipation)           // Final temperature rise(°C)
T_sec = w*heat_specific/(area_cooling*heat_dissipation)  // Thermal time constant(sec)
T_hour = T_sec/3600                                      // Thermal time constant(hours)

// Results
disp("PART IV - EXAMPLE : 1.22 : SOLUTION :-")
printf("\nFinal temperature rise, θ_m = %.1f°C", theta_m)
printf("\nThermal time constant of the motor = %.2f hours\n", T_hour)
printf("\nNOTE: ERROR: Mistake in calculating thermal time constant in the textbook solution")
