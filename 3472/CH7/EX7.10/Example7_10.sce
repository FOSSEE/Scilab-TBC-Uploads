// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.10 :
// Page number 76
clear ; clc ; close ; // Clear the work space and console

// Given data
cap_installed = 210.0*10**3       // Installed capacity of the station(kW)
capital_cost_kW = 1000.0          // Capital cost of station(Rs/kW)
fixed_cost_per = 0.13             // Fixed cost = 13% * cost of investment
variable_cost_per = 1.3           // Variable cost = 1.3*fixed cost
LF_1 = 1.0                        // Load factor
LF_2 = 0.5                        // Load factor

// Calculations
MD = cap_installed                                          // Maximum demand(kW)
hours_year = 365.0*24                                       // Total hours in a year
capital_cost = capital_cost_kW*cap_installed                // Capital cost of station(Rs)
// Case(i) At 100% load factor
fixed_cost_1 = capital_cost*fixed_cost_per                  // Fixed cost(Rs)
variable_cost_1 = variable_cost_per*fixed_cost_1            // Variable cost(Rs)
operating_cost_1 = fixed_cost_1+variable_cost_1             // Operating cost per annum(Rs)
units_gen_1 = LF_1*MD*hours_year                            // Total units generated(kWh)
cost_gen_1 = operating_cost_1*100/units_gen_1               // Cost of generation per kWh(Paise)
// Case(ii) At 50% load factor
fixed_cost_2 = capital_cost*fixed_cost_per                  // Fixed cost(Rs)
units_gen_2 = LF_2*MD*hours_year                            // Total units generated(kWh)
variable_cost_2 = variable_cost_1*units_gen_2/units_gen_1   // Variable cost(Rs)
operating_cost_2 = fixed_cost_2+variable_cost_2             // Operating cost per annum(Rs)
cost_gen_2 = operating_cost_2*100/units_gen_2               // Cost of generation per kWh(Paise)

// Results
disp("PART I - EXAMPLE : 7.10 : SOLUTION :-")
printf("\nCost of generation per kWh at 100 percent load factor = %.2f paise", cost_gen_1)
printf("\nCost of generation per kWh at 50 percent load factor = %.1f paise", cost_gen_2)
printf("\nComment: As the load factor is reduced, cost of generation is increased\n")
printf("\nNOTE: ERROR: (1) In problem statement, Capital cost of station must be Rs. 1000/kW, not Rs. 1000/MW")
printf("\n             (2) Calculation mistake in Total units generated in Case(i) in textbook")
