// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.14 :
// Page number 77
clear ; clc ; close ; // Clear the work space and console

// Given data
cap_installed = 100.0*10**3           // Installed capacity of the station(kW)
capital_cost_kW = 1000.0              // Capital cost(Rs/kW)
depreciation = 0.15                   // Annual depreciation charge
royalty_kW = 2.0                      // Royalty per kW per year(Rs)
royalty_kWh = 0.03                    // Royalty per kWh per year(Rs)
MD = 70.0*10**3                       // Maximum demand(kW)
LF = 0.6                              // Annual load factor
cost_salary = 1000000.0               // Annual cost of salaries,maintenance charges etc(Rs)
cost_salary_per = 0.2                 // Annual cost of salaries,maintenance charges etc charged as fixed charges

// Calculations
hours_year = 365.0*24                                            // Total hours in a year
unit_gen = MD*LF*hours_year                                      // Units generated/annum(kWh)
capital_cost = cap_installed*capital_cost_kW                     // Capital cost of plant(Rs)
depreciation_charge = depreciation*capital_cost                  // Depreciation charges(Rs)
salary_charge = cost_salary_per*cost_salary                      // Cost on salaries, maintenance etc(Rs)
fixed_charge = depreciation_charge+salary_charge                 // Total annual fixed charges(Rs)
cost_kW_fixed = (fixed_charge/MD)+royalty_kW                     // Cost per kW(Rs)
salary_charge_running = (1-cost_salary_per)*cost_salary          // Annual running charge on salaries, maintenance etc(Rs)
cost_kWh_running = (salary_charge_running/unit_gen)+royalty_kWh  // Cost per kWh(Rs)

// Results
disp("PART I - EXAMPLE : 7.14 : SOLUTION :-")
printf("\nGeneration cost in two part form is given by, Rs. (%.2f*kW + %.3f*kWh) ", cost_kW_fixed,cost_kWh_running)
