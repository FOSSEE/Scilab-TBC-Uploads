// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.7 :
// Page number 74
clear ; clc ; close ; // Clear the work space and console

// Given data
load_industry = 750.0          // Industrial consumer load supplied by station(MW)
load_commercial = 350.0        // Commercial establishment load supplied by station(MW)
load_power = 10.0              // Domestic power load supplied by station(MW)
load_light = 50.0              // Domestic light load supplied by station(MW)
MD = 1000.0                    // Maximum demand(MW)
kWh_gen = 50.0*10**5           // Number of kWh generated per year

// Calculations
// Case(i)
sum_demand = load_industry+load_commercial+load_power+load_light   // Sum of max demand of individual consumers(MW)
diversity_factor = sum_demand/MD                                   // Diversity factor
// Case(ii)
hours_year = 365.0*24                                              // Total hours in a year
average_demand = kWh_gen/hours_year                                // Average demand(MW)
LF = average_demand/MD*100                                         // Load factor(%)

// Results
disp("PART I - EXAMPLE : 7.7 : SOLUTION :-")
printf("\nCase(i) : Diversity factor = %.2f ", diversity_factor)
printf("\nCase(ii): Annual load factor = %.f percent", LF)
