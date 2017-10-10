// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.13 :
// Page number 77
clear ; clc ; close ; // Clear the work space and console

// Given data
gen_expense = 850000.0                 // Annual generation expense(Rs)
fuel_expense = 2800000.0               // Annual fuel expense(Rs)
trans_expense = 345000.0               // Annual transmission expense(Rs)
dist_expense = 2750000.0               // Annual distribution expense(Rs)
repair_expense = 300000.0              // Annual repairs,etc expense(Rs)
unit_gen = 600.0*10**6                 // Number of units generated per year(kWh)
MD = 75.0*10**3                        // Maximum demand(kW)
gen = 0.9                              // Fixed charges for generation
fuel = 0.15                            // Fixed charges for fuel
transm = 0.85                          // Fixed charges for transmission
dist = 0.95                            // Fixed charges for distribution
repair = 0.5                           // Fixed charges for repairs,etc
loss_dist = 0.2                        // Losses in transmission and distribution

// Calculations
fixed_gen = gen_expense*gen                      // Fixed charge on generation(Rs)
running_gen = gen_expense*(1-gen)                // Running charge on generation(Rs)
fixed_fuel = fuel_expense*fuel                   // Fixed charge on fuel(Rs)
running_fuel = fuel_expense*(1-fuel)             // Running charge on fuel(Rs)
fixed_trans = trans_expense*transm               // Fixed charge on transmission(Rs)
running_trans = trans_expense*(1-transm)         // Running charge on transmission(Rs)
fixed_dist = dist_expense*dist                   // Fixed charge on distribution(Rs)
running_dist = dist_expense*(1-dist)             // Running charge on distribution(Rs)
fixed_repair = repair_expense*repair             // Fixed charge on repairs,etc(Rs)
running_repair = repair_expense*(1-repair)       // Running charge on repairs,etc(Rs)
fixed_charge = fixed_gen+fixed_fuel+fixed_trans+fixed_dist+fixed_repair              // Total fixed charges(Rs)
running_charge = running_gen+running_fuel+running_trans+running_dist+running_repair  // Total running charges(Rs)
fixed_unit = fixed_charge/MD                     // Fixed charges per unit(Rs)
units_dist = unit_gen*(1-loss_dist)              // Total number of units distributed(kWh)
running_unit = running_charge*100/units_dist     // Running charges per unit(Paise)

// Results
disp("PART I - EXAMPLE : 7.13 : SOLUTION :-")
printf("\nTwo part tariff is Rs %.3f per kW of maximum demand plus %.3f paise per kWh", fixed_unit,running_unit)
