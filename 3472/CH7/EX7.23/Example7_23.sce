// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.23 :
// Page number 83-84
clear ; clc ; close ; // Clear the work space and console

// Given data
cap_3sets = 600.0                 // Capacity of 3 generators(kW)
no_3 = 3.0                        // Number of sets of 600 kW
cap_4thset = 400.0                // Capacity of 4th generator set(kW)
no_4 = 1.0                        // Number of sets of 400 kW
MD = 1600.0                       // Maximum demand(kW)
LF = 0.45                         // Load factor
cost_capital_kW = 1000.0          // Capital cost per kW installed capacity(Rs)
cost_annual_per = 0.15            // Annual cost = 15% of capital cost
cost_operation = 60000.0          // Annual operation cost(Rs)
cost_maintenance = 30000.0        // Annual maintenance cost(Rs)
fixed_maintenance = 1.0/3         // Fixed cost
variable_maintenance = 2.0/3      // Variable cost
cost_fuel_kg = 40.0/100           // Cost of fuel oil(Rs/kg)
cost_oil_kg = 1.25                // Cost of lubricating oil(Rs/kg)
calorific = 10000.0               // Calorific value of fuel(kcal/kg)
oil_consum = 1.0/400              // Consumption of lubricating oil. 1kg for every 400kWh generated
fuel_consum = 1.0/2               // Consumption of fuel. 1kg for every 2kWh generated
n_gen = 0.92                      // Generator efficiency
heat_lost = 1.0/3                 // Heat lost in the fuel to cooling water
theta = 11.0                      // Difference of temperature between inlet and outlet(°C)

// Calculations
// Case(a)
rating_3set_A = cap_3sets/n_gen                                                // Rating of first 3 sets(kW)
rating_4th_A = cap_4thset/n_gen                                                // Rating of 4th set(kW)
// Case(b)
avg_demand_B = LF*MD                                                           // Average demand(kW)
hours_year = 365.0*24                                                          // Total hours in a year
energy_B = avg_demand_B*hours_year                                             // Annual energy produced(kWh)
// Case(c)
total_invest = (no_3*cap_3sets+cap_4thset*no_4)*cost_capital_kW                // Total investment(Rs)
annual_cost = cost_annual_per*total_invest                                     // Annual cost(Rs)
maintenance_cost = fixed_maintenance*cost_maintenance                          // Maintenance cost(Rs)
fixed_cost_total = annual_cost+maintenance_cost                                // Total fixed cost per annum(Rs)
fuel_consumption = energy_B*fuel_consum                                        // Fuel consumption(Kg)
cost_fuel = fuel_consumption*cost_fuel_kg                                      // Cost of fuel(Rs)
oil_consumption = energy_B*oil_consum                                          // Lubrication oil consumption(Kg)
cost_oil = oil_consumption*cost_oil_kg                                         // Cost of Lubrication oil(Rs)
var_maintenance_cost = variable_maintenance*cost_maintenance                   // Variable part of maintenance cost(Rs)
variable_cost_total = cost_fuel+cost_oil+var_maintenance_cost+cost_operation   // Total variable cost per annum(Rs)
cost_total_D = fixed_cost_total+variable_cost_total                            // Total cost per annum(Rs)
cost_kWh_gen = cost_total_D/energy_B*100                                       // Cost per kWh generated(Paise)
// Case(c)
n_overall = energy_B*860/(fuel_consumption*calorific)*100                      // Overall efficiency(%)
// Case(d)
weight_water_hr = heat_lost*fuel_consumption/(hours_year*theta)*calorific      // Weight of cooling water required(kg/hr)
weight_water_min = weight_water_hr/60.0                                        // Weight of cooling water required(kg/min)
capacity_pump = weight_water_min*MD/avg_demand_B                               // Capacity of cooling water pump(kg/min)

// Results
disp("PART I - EXAMPLE : 7.23 : SOLUTION :-")
printf("\nCase(a): Rating of first 3 sets of diesel engine = %.f kW", rating_3set_A)
printf("\n         Rating of 4th set of diesel engine = %.f kW", rating_4th_A)
printf("\nCase(b): Annual energy produced = %.1e kWh", energy_B)
printf("\nCase(c): Total fixed cost = Rs %.f ", fixed_cost_total)
printf("\n         Total variable cost = Rs %.f ", variable_cost_total)
printf("\n         Cost per kWh generated = %.f paise", cost_kWh_gen)
printf("\nCase(d): Overall efficiency of the diesel plant = %.1f percent", n_overall)
printf("\nCase(e): Quantity of cooling water required per round = %.2e kg/hr = %.f kg/min", weight_water_hr,weight_water_min)
printf("\n         Capacity of cooling-water pumps under maximum load = %.f kg/min \n", capacity_pump)
printf("\nNOTE: Changes in obtained answer from that of textbook answer is due to more precision here')
