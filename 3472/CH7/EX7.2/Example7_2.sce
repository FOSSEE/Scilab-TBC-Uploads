// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.2 :
// Page number 73
clear ; clc ; close ; // Clear the work space and console

// Given data
maximum_demand = 480.0*10**3       // Maximum demand(kW)
LF = 0.4                           // Annual load factor

// Calculation
hours_year = 365.0*24                             // Total hours in a year
energy_gen = maximum_demand*LF*hours_year         // Total energy generated annually(kWh)

// Results
disp("PART I - EXAMPLE : 7.2 : SOLUTION :-")
printf("\nTotal energy generated annually = %.5e kWh", energy_gen)
