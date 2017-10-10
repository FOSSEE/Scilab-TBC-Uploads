// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.5 :
// Page number 74
clear ; clc ; close ; // Clear the work space and console

// Given data
load_1 = 150.0          // Load supplied by station(MW)
load_2 = 120.0          // Load supplied by station(MW)
load_3 = 85.0           // Load supplied by station(MW)
load_4 = 60.0           // Load supplied by station(MW)
load_5 = 5.0            // Load supplied by station(MW)
MD = 220.0              // Maximum demand(MW)
LF = 0.48               // Annual load factor

// Calculations
// Case(a)
hours_year = 365.0*24                             // Total hours in a year
units = LF*MD*hours_year                          // Number of units supplied annually
// Case(b)
sum_demand = load_1+load_2+load_3+load_4+load_5   // Sum of maximum demand of individual consumers(MW)
diversity_factor = sum_demand/MD                  // Diversity factor
// Case(c)
DF = MD/sum_demand                                // Demand factor

// Results
disp("PART I - EXAMPLE : 7.5 : SOLUTION :-")
printf("\nCase(a): Number of units supplied annually = %.2e units", units)
printf("\nCase(b): Diversity factor = %.3f ", diversity_factor)
printf("\nCase(c): Demand factor = %.3f = %.1f percent", DF,DF*100)
