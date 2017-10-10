// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.1 :
// Page number 73
clear ; clc ; close ; // Clear the work space and console

// Given data
connected_load = 450.0*10**3       // Connected load(kW)
maximum_demand = 250.0*10**3       // Maximum demand(kW)
units_generated = 615.0*10**6      // Units generated per annum(kWh)

// Calculations
// Case(i)
demand_factor = maximum_demand/connected_load        // Demand factor
// Case(ii)
hours_year = 365.0*24                                // Total hours in a year
average_demand = units_generated/hours_year          // Average demand(kW)
load_factor = average_demand/maximum_demand*100      // Load factor(%)

// Results
disp("PART I - EXAMPLE : 7.1 : SOLUTION :-")
printf("\nCase(i) : Demand factor = %.3f ", demand_factor)
printf("\nCase(ii): Load factor = %.1f percent", load_factor)
