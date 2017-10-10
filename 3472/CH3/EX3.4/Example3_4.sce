// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 3: HYDRO-ELECTRIC STATIONS

// EXAMPLE : 3.4 :
// Page number 41-42
clear ; clc ; close ; // Clear the work space and console

// Given data
load_factor = 0.15    // Load factor
P = 10.0*10**3        // Rated installed capacity(kW)
H = 50.0              // Head of plant(m)
n = 0.8               // Efficiency of plant

//Calculation
units_day = P*load_factor       // Total units generated daily on basis of load factor(kWhr)
units_week = units_day*24.0*7   // Total units generated for one week(kWhr)
Q = units_week/(9.81*H*n*24*7)  // Minimum flow of water(cubic mt/sec)

//Result
disp("PART I - EXAMPLE : 3.4 : SOLUTION :-")
printf("\nMinimum flow of river water to operate the plant, Q = %.3f cubic mt/sec", Q)
