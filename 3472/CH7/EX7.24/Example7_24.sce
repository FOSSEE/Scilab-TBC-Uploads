// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.24 :
// Page number 84
clear ; clc ; close ; // Clear the work space and console

// Given data
cap_installed = 30.0*10**3      // Rating of each generators(kW)
no = 4.0                        // Number of installed generators
MD = 100.0*10**3                // Maximum demand(kW)
LF = 0.8                        // Load factor
cost_capital_kW = 800.0         // Capital cost per kW installed capacity(Rs)
depreciation_per = 0.125        // Depreciation,etc = 12.5% of capital cost
cost_operation = 1.2*10**6      // Annual operation cost(Rs)
cost_maintenance = 600000.0     // Annual maintenance cost(Rs)
fixed_maintenance = 1.0/3       // Fixed cost
variable_maintenance = 2.0/3    // Variable cost
cost_miscellaneous = 100000.0   // Miscellaneous cost(Rs)
cost_fuel_kg = 32.0/1000        // Cost of fuel oil(Rs/kg)
calorific = 6400.0              // Calorific value of fuel(kcal/kg)
n_gen = 0.96                    // Generator efficiency
n_thermal = 0.28                // Thermal efficiency of turbine
n_boiler = 0.75                 // Boiler efficiency
n_overall = 0.2                 // Overall thermal efficiency

// Calculations
// Case(a)
rating_turbine = cap_installed/(n_gen*0.736)                    // Rating of each steam turbine(metric hp)
// Case(b)
avg_demand_B = LF*MD                                            // Average demand(kW)
hours_year = 365.0*24                                           // Total hours in a year
energy_B = avg_demand_B*hours_year                              // Annual energy produced(kWh)
// Case(c)
steam_consumption_C = (0.8+3.5*LF)/LF                           // Average steam consumption(kg/kWh)
// Case(d)
LF_D = 1.0                                                      // Assumption that Load factor for boiler
steam_consumption_D = (0.8+3.5*LF_D)/LF_D                       // Steam consumption(kg/kWh)
energy_D = cap_installed*1.0                                    // Energy output per hour per set(kWh)
evaporation_cap = steam_consumption_D*energy_D                  // Evaporation capacity of boiler(kg/hr)
// Case(e)
total_invest = no*cap_installed*cost_capital_kW                 // Total investment(Rs)
capital_cost = depreciation_per*total_invest                    // Capital cost(Rs)
maintenance_cost = fixed_maintenance*cost_maintenance           // Maintenance cost(Rs)
fixed_cost_total = capital_cost+maintenance_cost                // Total fixed cost per annum(Rs)
var_maintenance_cost = variable_maintenance*cost_maintenance    // Variable part of maintenance cost(Rs)
input_E = energy_B/n_overall                                    // Input into system per annum(kWh)
weight_fuel = input_E*860/calorific                             // Weight of fuel(kg)
cost_fuel = weight_fuel*cost_fuel_kg                            // Cost of fuel(Rs)
variable_cost_total = cost_operation+var_maintenance_cost+cost_miscellaneous+cost_fuel   // Total variable cost per annum(Rs)
cost_total_E = fixed_cost_total+variable_cost_total             // Total cost per annum(Rs)
cost_kWh_gen = cost_total_E/energy_B*100                        // Cost per kWh generated(Paise)

// Results
disp("PART I - EXAMPLE : 7.24 : SOLUTION :-")
printf("\nCase(a): Rating of each steam turbine = %.f metric hp", rating_turbine)
printf("\nCase(b): Energy produced per annum = %.3e kWh", energy_B)
printf("\nCase(c): Average steam consumption per kWh = %.1f kg/kWh", steam_consumption_C)
printf("\nCase(d): Evaporation capacity of boiler = %.f kg/hr", evaporation_cap)
printf("\nCase(e): Total fixed cost = Rs %.2e ", fixed_cost_total)
printf("\n         Total variable cost = Rs %.2e ", variable_cost_total)
printf("\n         Cost per kWh generated = %.2f paise\n", cost_kWh_gen)
printf("\nNOTE: Changes in obtained answer from that of textbook answer is due to more precision here')
