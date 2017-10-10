// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 9: ELECTRIC TRACTION SYSTEMS AND POWER SUPPLY

// EXAMPLE : 9.1 :
// Page number 817-818
clear ; clc ; close ; // Clear the work space and console

// Given data
L = 3.0           // Length of section ACB of rail(km)
L_B_A = 2.0       // Distance of B from A(km)
I_load = 350.0    // Loading(A/km)
r_rail = 0.035    // Resistance of rail(ohm/km)
r_feed = 0.03     // Resistance of negative feeder(ohm/km)

// Calculations
x_val = integrate('I_load*(L-x)','x',0,L_B_A)
I = x_val/(L_B_A-0)                            // Current in negative feeder(A)
x = L-(I/I_load)                               // Distance from feeding point(km)
C = integrate('r_rail*I_load*x','x',0,x)
V = r_feed*L_B_A*I                             // Voltage produced by negative booster(V)
rating = V*I/1000                              // Rating of the booster(kW)

// Results
disp("PART IV - EXAMPLE : 9.1 : SOLUTION :-")
printf("\nMaximum potential difference between any two points of the rails, C = %.2f V", C)
printf("\nRating of the booster = %.1f kW", rating)
