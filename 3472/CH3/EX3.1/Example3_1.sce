// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 3: HYDRO-ELECTRIC STATIONS

// EXAMPLE : 3.1 :
// Page number 41
clear ; clc ; close ; // Clear the work space and console

// Given data
Q = 95.0       // Minimum run-off(m^3/sec)
h = 40.0       // Head(m)

// Calculations
w = 1000.0                  // Density of water(kg/m^3)
weight = Q*w                // Weight of water per sec(kg)
work_done = weight*h        // Work done in one second(kg-mt)
kW_1 = 75.0/0.746           // 1 kW(kg-mt/sec)
power = work_done/kW_1      // Power production(kW)
hours_year = 365.0*24       // Total hours in a year
output = power*365*24.0     // Yearly gross output(kWhr)

// Results
disp("PART I - EXAMPLE : 3.1 : SOLUTION :-")
printf("\nFirm capacity = %.f kW", power)
printf("\nYearly gross output = %.2e kWhr.", output)
