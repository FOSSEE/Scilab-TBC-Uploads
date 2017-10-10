// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 2: THERMAL STATIONS

// EXAMPLE : 2.2 :
// Page number 26
clear ; clc ; close ; // Clear the work space and console

//Given data
amount = 25.0*10**5           // Amount spent in 1 year(Rs)
value_heat = 5000.0           // Heating value(kcal/kg)
cost = 500.0                  // Cost of coal per ton(Rs)
n_ther = 0.35                 // Thermal efficiency
n_elec = 0.9                  // Electrical efficiency

//Calculations
n = n_ther*n_elec                          // Overall efficiency
consumption = amount/cost*1000             // Coal consumption in 1 year(kg)
combustion = consumption*value_heat        // Heat of combustion(kcal)
output = n*combustion                      // Heat output(kcal)
unit_gen = output/860.0                    // Annual heat generated(kWh). 1 kWh = 860 kcal
hours_year = 365*24.0                      // Total time in a year(hour)
load_average = unit_gen/hours_year         // Average load on the power plant(kW)

//Result
disp("PART I - EXAMPLE : 2.2 : SOLUTION :-")
printf("\nAverage load on power plant = %.2f kW\n", load_average)
printf("\nNOTE: ERROR: Calculation mistake in the final answer in the textbook")
