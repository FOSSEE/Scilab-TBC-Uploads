// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.22 :
// Page number 82
clear ; clc ; close ; // Clear the work space and console

// Given data
MD = 20.0*10**3                       // Maximum demand(kW)
LF = 0.6                              // Load factor
CF = 0.48                             // Plant capacity factor
UF = 0.8                              // Plant use factor

// Calculations
// Case(a)
avg_demand = LF*MD                      // Average demand(kW)
ene_daily = avg_demand*24.0             // Daily energy produced(kWh)
// Case(b)
cap_installed = avg_demand/CF           // Installed capacity(kW)
cap_reserve = cap_installed-MD          // Reserve capacity(kW)
// Case(c)
max_ene_C = cap_installed*24.0          // Maximum energy that could be produced daily(kWh)
// Case(d)
max_ene_D = ene_daily/UF                // Maximum energy that could be produced daily as per schedule(kWh)

// Results
disp("PART I - EXAMPLE : 7.22 : SOLUTION :-")
printf("\nCase(a): Daily energy produced = %.f kWh", ene_daily)
printf("\nCase(b): Reserve capacity of plant = %.f kW", cap_reserve)
printf("\nCase(c): Maximum energy that could be produced daily when plant runs at all time = %.f kWh", max_ene_C)
printf("\nCase(d): Maximum energy that could be produced daily when plant runs fully loaded = %.f kWh", max_ene_D)
