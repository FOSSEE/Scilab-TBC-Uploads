// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 3: HYDRO-ELECTRIC STATIONS

// EXAMPLE : 3.3 :
// Page number 41
clear ; clc ; close ; // Clear the work space and console

// Given data
A = 200.0       // Catchment area(Sq.km)
F = 1000.0      // Annual rainfall(mm)
H = 200.0       // Effective head(m)
K = 0.5         // Yield factor
n = 0.8         // Plant efficiency

// Calculations
P = 3.14*n*K*A*F*H*10**-4    // Available continuous power(kW)

// Results
disp("PART I - EXAMPLE : 3.3 : SOLUTION :-")
printf("\nAvailable continuous power of hydro-electric station , P = %.f kW", P)
