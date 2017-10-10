// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.11 :
// Page number 76
clear ; clc ; close ; // Clear the work space and console

// Given data
MD = 100.0*10**3                    // Maximum demand(kW)
capital_cost = 200.0*10**6          // Capital cost(Rs)
LF = 0.4                            // Annual load factor
cost_fueloil = 15.0*10**6           // Annual cost of fuel and oil(Rs)
cost_tax = 10.0*10**6               // Cost of taxes, wages and salaries(Rs)
interest = 0.15                     // Interest and depreciation

// Calculations
hours_year = 365.0*24                               // Total hours in a year
units_gen = MD*LF*hours_year                        // Units generated per annum(kWh)
fixed_charge = interest*capital_cost                // Annual fixed charges(Rs)
running_charge = cost_fueloil+cost_tax              // Annual running charges(Rs)
annual_charge = fixed_charge+running_charge         // Total annual charges(Rs)
cost_unit = annual_charge*100/units_gen             // Cost per unit(Paise)

// Results
disp("PART I - EXAMPLE : 7.11 : SOLUTION :-")
printf("\nCost per unit generated = %.f paise", cost_unit)
