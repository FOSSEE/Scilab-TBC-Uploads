// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.15 :
// Page number 78
clear ; clc ; close ; // Clear the work space and console

// Given data
cap_installed = 100.0*10**3  // Installed capacity of station(kW)
cost_gen = 30.0              // Generating cost per annum(Rs/kW)
cost_fixed = 4000000.0       // Fixed cost per annum(Rs)
cost_fuel = 60.0             // Cost of fuel(Rs/tonne)
calorific = 5700.0           // Calorific value of fuel(kcal/kg)
rate_heat_1 = 2900.0         // Plant heat rate at 100% capacity factor(kcal/kWh)
CF_1 = 1.0                   // Capacity factor
rate_heat_2 = 4050.0         // Plant heat rate at 50% capacity factor(kcal/kWh)
CF_2 = 0.5                   // Capacity factor

// Calculations
cost_fixed_kW = cost_fixed/cap_installed           // Fixed cost per kW(Rs)
cost_fixed_total = cost_gen+cost_fixed_kW          // Fixed cost per kW capacity(Rs)
average_demand_1 = CF_1*cap_installed              // Average demand at 100% capacity factor(kW)
average_demand_2 = CF_2*cap_installed              // Average demand at 50% capacity factor(kW)
hours_year = 365.0*24                              // Total hours in a year
unit_gen_1 = CF_1*hours_year                       // Energy generated per annum with average demand of 1 kW(kWh)
unit_gen_2 = CF_2*hours_year                       // Energy generated per annum with average demand of 0.5 kW(kWh)
cost_kWh_fixed_1 = cost_fixed_total*100/unit_gen_1 // Cost per kWh due to fixed charge with 100% CF(Paise)
cost_kWh_fixed_2 = cost_fixed_total*100/unit_gen_2 // Cost per kWh due to fixed charge with 50% CF(Paise)
kg_kWh_1 = rate_heat_1/calorific                   // Weight(kg)
kg_kWh_2 = rate_heat_2/calorific                   // Weight(kg)
cost_coal_1 = kg_kWh_1*cost_fuel*100/1000.0        // Cost due to coal at 100% CF(Paise/kWh)
cost_coal_2 = kg_kWh_2*cost_fuel*100/1000.0        // Cost due to coal at 50% CF(Paise/kWh)
cost_total_1 = cost_kWh_fixed_1+cost_coal_1        // Total cost per unit with 100% CF(Paise)
cost_total_2 = cost_kWh_fixed_2+cost_coal_2        // Total cost per unit with 50% CF(Paise)

// Results
disp("PART I - EXAMPLE : 7.15 : SOLUTION :-")
printf("\nOverall generating cost per unit at 100 percent capacity factor = %.3f paise", cost_total_1)
printf("\nOverall generating cost per unit at 50 percent capacity factor = %.3f paise\n", cost_total_2)
printf("\nNOTE: Slight changes in obtained answer from that of textbook answer is due to more precision here")
