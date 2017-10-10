// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.16 :
// Page number 78
clear ; clc ; close ; // Clear the work space and console

// Given data
MD = 75.0*10**3                       // Maximum demand(kW)
LF = 0.4                              // Yearly load factor
cost_capital = 60.0                   // Capital cost(Rs/annum/kW)
cost_kWh = 1.0                        // Cost per kWh transmitted(Paise)
charge_trans = 2000000.0              // Annual capital charge for transmission(Rs)
charge_dist = 1500000.0               // Annual capital charge for distribution(Rs)
diversity_trans = 1.2                 // Diversity factor for transmission
diversity_dist = 1.25                 // Diversity factor for distribution
n_trans = 0.9                         // Efficiency of transmission system
n_dist = 0.85                         // Efficiency of distribution system

// Calculations
// Case(a)
capital_cost = cost_capital*MD                              // Annual capital cost(Rs)
fixed_charge_sub = capital_cost+charge_trans                // Total fixed charges for supply to substation per annum(Rs)
sum_MD_sub = MD*diversity_trans                             // Sum of all maximum demand of substation(kW)
cost_kW_sub = fixed_charge_sub/sum_MD_sub                   // Yearly cost per kW demand at substation(Rs)
running_cost_unit_sub = 1/n_trans                           // Running cost per unit supplied at substation(Paise)
// Case(b)
sum_MD_con = sum_MD_sub*diversity_dist                      // Sum of all maximum demand of consumer(kW)
fixed_charge_con = capital_cost+charge_trans+charge_dist    // Total fixed charges for supply to cosnumers(Rs)
cost_kW_con = fixed_charge_con/sum_MD_con                   // Yearly cost per kW demand on consumer premises(Rs)
running_cost_unit_con = running_cost_unit_sub/n_dist        // Running cost per unit supplied to consumer(Paise)

// Results
disp("PART I - EXAMPLE : 7.16 : SOLUTION :-")
printf("\nCase(a): Yearly cost per kW demand at the substations = Rs. %.2f ", cost_kW_sub)
printf("\n         Cost per kWh supplied at the substations = %.2f paise\n", running_cost_unit_sub)
printf("\nCase(b): Yearly cost per kW demand at the consumer premises = Rs. %.2f ", cost_kW_con)
printf("\n         Cost per kWh supplied at the consumer premises = %.3f paise", running_cost_unit_con)
