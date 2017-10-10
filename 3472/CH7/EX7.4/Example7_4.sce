// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.4 :
// Page number 74
clear ; clc ; close ; // Clear the work space and console

// Given data
MD = 500.0          // Maximum demand(MW)
LF = 0.5            // Annual load factor
CF = 0.4            // Annual capacity factor

// Calculations
hours_year = 365.0*24                  // Total hours in a year
energy_gen = MD*LF*hours_year          // Energy generated/annum(MWh)
plant_cap = energy_gen/(CF*hours_year) // Plant capacity(MW)
reserve_cap = plant_cap-MD             // Reserve capacity of plant(MW)

// Results
disp("PART I - EXAMPLE : 7.4 : SOLUTION :-")
printf("\nReserve capacity of plant = %.f MW", reserve_cap)
