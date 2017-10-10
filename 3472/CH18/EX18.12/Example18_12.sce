// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 11: LOAD FREQUENCY CONTROL AND LOAD SHARING OF POWER GENERATING SOURCES

// EXAMPLE : 11.12 :
// Page number 337
clear ; clc ; close ; // Clear the work space and console

// Given data
cap_A = 15000.0              // Capacity of station A(kW)
cap_B = 10000.0              // Capacity of station B(kW)
cap_C = 2000.0               // Capacity of station C(kW)
speed_reg_A = 2.4/100        // Speed regulation of A
speed_reg_B = 3.2/100        // Speed regulation of B
slip_C = 4.5/100             // Full load slip
local_load_B_a = 10000.0     // Local load on station B(kW)
local_load_A_a = 0           // Local load on station A(kW)
local_load_both = 10000.0    // Local load on both station(kW)

// Calculations
// Case(a)
speed_A = speed_reg_A/cap_A                                       // % of speed drop for A
speed_C = slip_C/cap_C                                            // % of speed drop for C
speed_B = speed_reg_B/cap_B                                       // % of speed drop for B
X = local_load_B_a*speed_B/(speed_A+speed_B+speed_C)              // Load on C when local load of B is 10000 kW and A has no load(kW)
// Case(b)
Y = local_load_both*(speed_B-speed_A)/(speed_A+speed_B+speed_C)   // Load on C when both station have local loads of 10000 kW(kW)

// Results
disp("PART II - EXAMPLE : 11.12 : SOLUTION :-")
printf("\nCase(a): Load on C when local load of B is 10000 kW and A has no load, X = %.f kW", X)
printf("\nCase(b): Load on C when both station have local loads of 10000 kW, Y = %.f kW", Y)
