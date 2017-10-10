// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.12 :
// Page number 76-77
clear ; clc ; close ; // Clear the work space and console

// Given data
cap_installed = 500.0           // Installed capacity of the station(MW)
CF = 0.45                       // Capacity factor
LF = 0.6                        // Annual laod factor
cost_fueloil = 10.0*10**7       // Annual cost of fuel,oil etc(Rs)
capital_cost = 10**9            // Capital cost(Rs)
interest = 0.15                 // Interest and depreciation

// Calculations
// Case(i)
MD = cap_installed*CF/LF                                    // Maximum demand(MW)
cap_reserve = cap_installed-MD                              // Reserve capacity(MW)
// Case(ii)
hours_year = 365.0*24                                       // Total hours in a year
units_gen = MD*10**3*LF*hours_year                          // Units generated per annum(kWh)
fixed_charge = interest*capital_cost                        // Annual fixed charges(Rs)
running_charge = cost_fueloil                               // Annual running charges(Rs)
annual_charge = fixed_charge+running_charge                 // Total annual charges(Rs)
cost_unit = annual_charge*100/units_gen                     // Cost per kWh generated(Paise)

// Results
disp("PART I - EXAMPLE : 7.12 : SOLUTION :-")
printf("\nCase(i) : Minimum reserve capacity of station = %.f MW", cap_reserve)
printf("\nCase(ii): Cost per kWh generated = %.f paise", cost_unit)
